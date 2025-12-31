<#
🔐 ControlPoint Leadership – DSM-MEMBER-SRV Updates
Author: J.Knight
Code: dm4aw9a

.STEP 1–3 LAB SCRIPT (Workflow-Style Notes)
Windows Server 2025 – STIG Drift Lab
Description:
This script guides you through detecting, remediating, and validating STIG drift.
Workflow Notes:
- Step 1: Detect drift (collect evidence of deviations)
- Step 2: Remediate drift (apply STIG-compliant settings)
- Step 3: Validate compliance (confirm remediation)
- Recommended: Take screenshots after detection, remediation, and validation.
#>

# -------------------------------
# STEP 1 – Detect Drift
# Workflow:
# 1. Check password policy for compliance
# 2. Check auditing status for logon events
# 3. Check for unapproved admin users
# Expected: Outputs show deviations from STIG baseline
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

Write-Host "`nStep 1 completed. Review outputs and take screenshots for documentation.`n"

# -------------------------------
# STEP 2 – Remediate Drift
# Workflow:
# 1. Reset password policy to STIG-compliant values
# 2. Re-enable auditing for logon events
# 3. Remove unapproved admin users
# Expected: Settings restored to STIG baseline
# -------------------------------

Write-Host "=== STEP 2: Remediating Drift ==="

# Reset password policy
net accounts /minpwlen:14 /maxpwage:60

# Re-enable auditing
auditpol /set /subcategory:"Logon" /success:enable /failure:enable

# Remove unapproved admin
Remove-LocalUser -Name "LabAdmin"

Write-Host "`nStep 2 completed. Drift has been remediated. Take screenshots of restored outputs.`n"

# -------------------------------
# STEP 3 – Validate Compliance
# Workflow:
# 1. Confirm password policy matches STIG
# 2. Confirm auditing is enabled
# 3. Confirm no unapproved admins exist
# Expected: All outputs indicate full STIG compliance
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

Write-Host "`nStep 3 completed. If all outputs are compliant, your server is STIG-compliant. Take final validation screenshots.`n"

