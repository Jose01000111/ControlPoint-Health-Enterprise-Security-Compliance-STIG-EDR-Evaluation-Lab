PS C:\Users\J.Knight> Set-Content -Path "C:\Data\PHI\Patients\patient_records.txt" -Value $patientData
PS C:\Users\J.Knight>
PS C:\Users\J.Knight> $claimsData = @"
>> ClaimID,PatientName,ProcedureCode,Amount
>> 10001,Jane Smith,99213,245.00
>> 10002,Robert Brown,93000,180.00
>> "@
PS C:\Users\J.Knight>
PS C:\Users\J.Knight> Set-Content -Path "C:\Data\PHI\Claims\claims_2024.csv" -Value $claimsData
PS C:\Users\J.Knight>
PS C:\Users\J.Knight> Write-Host "=== Creating PII Files ==="
=== Creating PII Files ===
PS C:\Users\J.Knight>
PS C:\Users\J.Knight> $employeeData = @"
>> EmployeeID,Name,SSN,Email
>> E1001,Alice Green,123-45-6789,alice.green@company.local
>> "@
PS C:\Users\J.Knight>
PS C:\Users\J.Knight> Set-Content -Path "C:\Data\PII\Employees\employee_roster.csv" -Value $employeeData
PS C:\Users\J.Knight>
PS C:\Users\J.Knight> # =========================================
PS C:\Users\J.Knight> # ENCRYPT FILES USING EFS
PS C:\Users\J.Knight> # =========================================
PS C:\Users\J.Knight>
PS C:\Users\J.Knight> Write-Host "=== Encrypting PII / PHI Directories (EFS) ==="
=== Encrypting PII / PHI Directories (EFS) ===
PS C:\Users\J.Knight>
PS C:\Users\J.Knight> cipher /e /s:"C:\Data\PHI"

 Setting the directory C:\Data\PHI to encrypt new files [OK]

 Encrypting files in C:\Data\PHI\


 Encrypting files in C:\Data\PHI\Claims\


 Encrypting files in C:\Data\PHI\Patients\


1 file(s) [or directorie(s)] within 4 directorie(s) were encrypted.

PS C:\Users\J.Knight> cipher /e /s:"C:\Data\PII"

 Setting the directory C:\Data\PII to encrypt new files [OK]

 Encrypting files in C:\Data\PII\


 Encrypting files in C:\Data\PII\Customers\


 Encrypting files in C:\Data\PII\Employees\


1 file(s) [or directorie(s)] within 4 directorie(s) were encrypted.

PS C:\Users\J.Knight>
PS C:\Users\J.Knight> Write-Host "=== Verifying Encryption Status ==="
=== Verifying Encryption Status ===
PS C:\Users\J.Knight> cipher /c "C:\Data\PHI\Patients\patient_records.txt"

 Listing C:\Data\PHI\Patients\
 New files added to this directory will be encrypted.

E patient_records.txt
  Compatibility Level:
    Windows XP/Server 2003

  Users who can decrypt:
    DSM-MEMBER-SRV\J.Knight [J.Knight(J.Knight@DSM-MEMBER-SRV)]
    Certificate thumbprint: FBA0 6AF7 B46E 9E72 F569 5191 8109 267E 4026 B7CF

  No recovery certificate found.

  Key Information:
    Algorithm: AES
    Key Length: 256
    Key Entropy: 256

PS C:\Users\J.Knight> cipher /c "C:\Data\PII\Employees\employee_roster.csv"

 Listing C:\Data\PII\Employees\
 New files added to this directory will be encrypted.

E employee_roster.csv
  Compatibility Level:
    Windows XP/Server 2003

  Users who can decrypt:
    DSM-MEMBER-SRV\J.Knight [J.Knight(J.Knight@DSM-MEMBER-SRV)]
    Certificate thumbprint: FBA0 6AF7 B46E 9E72 F569 5191 8109 267E 4026 B7CF

  No recovery certificate found.

  Key Information:
    Algorithm: AES
    Key Length: 256
    Key Entropy: 256

PS C:\Users\J.Knight>
PS C:\Users\J.Knight> Write-Host "=== PART 1 COMPLETE: DATA CREATED AND ENCRYPTED ==="
