<#
.STEP 1–3 LAB SCRIPT
Windows Server 2025 – STIG Drift Lab
Author: Jose Guerrero
Description:
This script covers Steps 1–3:
1. Detect drift from baseline STIG settings
2. Remediate drift
3. Validate compliance
#>

# -------------------------------
# Step 1 – Detect Drift
# -------------------------------

Write-Host "=== STEP 1: Detecting Drift ==="

# Check password policy
Write-Host "`n-- Password Policy --"
net accounts

# Check auditing status
Write-Host "`n-- Auditing Status --"
auditpol /get /subcategory:"Logon"

# Check for unapproved admin
Write-Host "`n-- Unapproved Admin Check --"
Get-LocalUser | Where-Object {$_.Name -eq "LabAdmin"}

Write-Host "`nStep 1 completed. Please review outputs and take screenshots if needed.`n"

# -------------------------------
# Step 2 – Remediate Drift
# -------------------------------

Write-Host "=== STEP 2: Remediating Drift ==="

# Reset password policy
net accounts /minpwlen:14 /maxpwage:60

# Re-enable auditing
auditpol /set /subcategory:"Logon" /success:enable /failure:enable

# Remove unapproved admin
Remove-LocalUser -Name "LabAdmin"

Write-Host "`nStep 2 completed. Drift has been remediated.`n"

# -------------------------------
# Step 3 – Validate Compliance
# -------------------------------

Write-Host "=== STEP 3: Validating Compliance ==="

# Verify password policy
Write-Host "`n-- Password Policy --"
net accounts

# Verify auditing status
Write-Host "`n-- Auditing Status --"
auditpol /get /subcategory:"Logon"

# Verify admin removal
Write-Host "`n-- Unapproved Admin Check --"
Get-LocalUser | Where-Object {$_.Name -eq "LabAdmin"}

Write-Host "`nStep 3 completed. If all outputs are compliant, your server is STIG-compliant.`n"
