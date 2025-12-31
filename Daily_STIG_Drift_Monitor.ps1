<#
🔐 ControlPoint Leadership – DSM-MEMBER-SRV Updates
Author: J.Knight
Code: dm4aw9a

.STEP 4 LAB SCRIPT (Workflow-Style Notes)
Windows Server 2025 – Daily STIG Drift Monitoring
Description:
This script automates daily checks for STIG drift:
- Password policy
- Logon auditing
- Unapproved admin users
Workflow Notes:
1. Creates the Reports folder if missing
2. Checks STIG compliance for key settings
3. Generates a report if drift is detected
4. Outputs status to console for immediate review
Recommended: Schedule in Task Scheduler for daily execution
#>

# -------------------------------
# Define report location and ensure folder exists
# -------------------------------
$reportDir = "C:\Data\Reports"
$reportPath = "$reportDir\DailyDriftReport.txt"

if (-not (Test-Path $reportDir)) {
    Write-Host "Reports directory not found. Creating $reportDir..."
    New-Item -ItemType Directory -Path $reportDir -Force
}

# -------------------------------
# Initialize issues array to track drift
# -------------------------------
$issues = @()

# -------------------------------
# Check Password Policy
# Workflow: Detect if minimum password length is below STIG baseline
# -------------------------------
$pwdPolicy = net accounts
if ($pwdPolicy -notmatch "Minimum password length 14") {
    $issues += "Password policy drifted"
}

# -------------------------------
# Check Auditing Status
# Workflow: Detect if logon auditing is disabled
# -------------------------------
$auditStatus = auditpol /get /subcategory:"Logon"
if ($auditStatus -match "Disabled") {
    $issues += "Logon auditing disabled"
}

# -------------------------------
# Check Unapproved Admin Users
# Workflow: Detect if any unapproved admins exist (e.g., LabAdmin)
# -------------------------------
$adminCheck = Get-LocalUser | Where-Object {$_.Name -eq "LabAdmin"}
if ($adminCheck) {
    $issues += "Unapproved admin exists"
}

# -------------------------------
# Output Report
# Workflow:
# - If issues exist, write to DailyDriftReport.txt
# - Otherwise, output compliance confirmation
# -------------------------------
if ($issues.Count -gt 0) {
    $issues | Out-File -FilePath $reportPath -Force
    Write-Host "Drift detected! Report saved to $reportPath"
} else {
    Write-Host "No issues detected. VM is compliant."
}
