<#
.SYNOPSIS
Master Compliance & Policy Enforcement Script for DSM-MEMBER-SRV
AUTHOR: Joseph Knight
ENVIRONMENT: Windows Server 2025
PURPOSE: OS hardening, STIG enforcement, drift detection, reporting, and IR
#>

# -------------------------------------------
# CONFIGURATION
# -------------------------------------------
$ReportDir = "C:\Data\Reports"
$ReportFile = "$ReportDir\DailyComplianceReport.txt"
$IRLogFile = "$ReportDir\IR_IncidentLog.txt"

# Ensure report directory exists
if (-not (Test-Path $ReportDir)) {
    New-Item -Path $ReportDir -ItemType Directory -Force
}

# Initialize report arrays
$ComplianceIssues = @()
$IRActions = @()

# -------------------------------------------
# 1. OS HARDENING
# -------------------------------------------
Write-Host "Applying OS Hardening..." -ForegroundColor Cyan

# Enable Windows Firewall for all profiles
Set-NetFirewallProfile -Profile Domain,Private,Public -Enabled True

# Schedule Windows Updates (example)
# Requires PSWindowsUpdate module
Try {
    Import-Module PSWindowsUpdate -ErrorAction Stop
    Install-WindowsUpdate -AcceptAll -IgnoreReboot -ErrorAction Stop
} Catch {
    Write-Host "PSWindowsUpdate module not available. Skipping automatic updates." -ForegroundColor Yellow
}

# Disable unnecessary services (example: Spooler)
$ServicesToDisable = @("Spooler")
foreach ($svc in $ServicesToDisable) {
    if ((Get-Service -Name $svc).Status -eq 'Running') {
        Stop-Service -Name $svc -Force
        $IRActions += "Stopped service $svc"
    }
    Set-Service -Name $svc -StartupType Disabled
}

# -------------------------------------------
# 2. STIG ENFORCEMENT
# -------------------------------------------
Write-Host "Enforcing STIG settings..." -ForegroundColor Cyan

# Password Policy
net accounts /minpwlen:14 /maxpwage:60 /uniquepw:5

# Account Lockout Policy
net accounts /lockoutthreshold:5 /lockoutduration:30

# Enable Logon Auditing
auditpol /set /subcategory:"Logon" /success:enable /failure:enable

# -------------------------------------------
# 3. DRIFT DETECTION
# -------------------------------------------
Write-Host "Detecting policy drift..." -ForegroundColor Cyan

# Check password policy
$pwdPolicy = net accounts
if ($pwdPolicy -notmatch "Minimum password length 14") { $ComplianceIssues += "Password policy drift detected" }

# Check auditing
$auditStatus = auditpol /get /subcategory:"Logon"
if ($auditStatus -match "Disabled") { $ComplianceIssues += "Logon auditing is disabled" }

# Check for unapproved admin user
$UnapprovedAdmin = Get-LocalUser | Where-Object {$_.Name -eq "LabAdmin"}
if ($UnapprovedAdmin) { 
    $ComplianceIssues += "Unapproved admin 'LabAdmin' exists"
    # Optional remediation
    Remove-LocalUser -Name "LabAdmin"
    $IRActions += "Removed unapproved admin 'LabAdmin'"
}

# -------------------------------------------
# 4. REPORTING
# -------------------------------------------
Write-Host "Generating compliance report..." -ForegroundColor Cyan

if ($ComplianceIssues.Count -gt 0) {
    $ComplianceIssues | Out-File -FilePath $ReportFile -Force
    Write-Host "Compliance issues detected! Report saved to $ReportFile" -ForegroundColor Red
} else {
    Write-Host "No compliance issues detected." -ForegroundColor Green
    "No compliance issues detected on $(Get-Date)" | Out-File -FilePath $ReportFile -Force
}

if ($IRActions.Count -gt 0) {
    $IRActions | Out-File -FilePath $IRLogFile -Force
    Write-Host "Incident response actions logged to $IRLogFile" -ForegroundColor Yellow
}

# -------------------------------------------
# 5. INCIDENT RESPONSE EXAMPLES
# -------------------------------------------
Write-Host "Running optional IR actions..." -ForegroundColor Cyan

# Example: quarantine suspicious file
$SuspiciousFile = "C:\Temp\suspicious.exe"
$QuarantineDir = "C:\Quarantine"
if (Test-Path $SuspiciousFile) {
    if (-not (Test-Path $QuarantineDir)) { New-Item -Path $QuarantineDir -ItemType Directory -Force }
    Move-Item $SuspiciousFile -Destination $QuarantineDir
    $IRActions += "Moved suspicious file to quarantine"
    Write-Host "Suspicious file moved to quarantine." -ForegroundColor Yellow
}

# -------------------------------------------
# 6. SUMMARY
# -------------------------------------------
Write-Host "Script execution completed." -ForegroundColor Cyan
Write-Host "Compliance Issues: $($ComplianceIssues.Count)"
Write-Host "IR Actions: $($IRActions.Count)"
