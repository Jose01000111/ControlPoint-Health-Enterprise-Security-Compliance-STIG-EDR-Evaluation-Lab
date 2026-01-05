# 💡 ControlPoint Health – Enterprise Hybrid Security Lab for STIG, EDR, and Risk-Based Compliance Assessment

### ControlPoint Health, a nationwide health insurance provider with 15 offices 🏥, is running a hybrid security program to test preventive STIG hardening and detection-focused EDR monitoring 🛡️. The lab focuses on critical identity infrastructure and servers holding sensitive PII/PHI, balancing compliance, cost, and enterprise risk 💼. Teams perform vulnerability assessments, apply automated PowerShell remediation, monitor endpoint and security events, and evaluate detection across system tiers. By simulating real-world conditions across multiple regional environments, the organization identifies cost-efficient, secure, and scalable controls for enterprise-wide adoption.

## 👥 ControlPoint Health – Staff Overview

| Staff / Role | Location | Responsibilities |
|--------------|---------|-----------------|
| 🛡️ **CISO – Maria Thompson** | Nationwide | Owns overall security posture; approves hybrid model; final authority on risk acceptance |
| 🖥️ **Director of Cybersecurity Ops – Alex Patel** | Nationwide | Defines endpoint & identity strategy; manages EDR deployment; reviews alert trends and detection effectiveness |
| 📜 **Director of Risk & Compliance – Samantha Lee** | Nationwide | Establishes HIPAA-aligned compliance policies; determines STIG applicability; evaluates audit and regulatory impact |
| 🔍 **Vulnerability Management Lead – David Chen** | Nationwide | Oversees Tenable scanning; reviews STIG compliance; prioritizes remediation based on risk |
| 🛡️ **Security Administrator – Joseph Knight** | Des Moines | Operates DSM-MEMBER-SRV; enforces STIG; monitors EDR; conducts vulnerability assessments; maps potential threats |

---

## 📌Operational Directives (from CISO) to Des Moines Offices

**Work Order – DSM-MEMBER-SRV**  
- Assigned to: 🛡️ Joseph Knight  
- CC: Alex Patel, Samantha Lee, David Chen  
- Task: Enforce STIG compliance on server holding PII/PHI; run Tenable vulnerability scan; monitor EDR alerts; document risk exposure and mitigation recommendations.  

<img src="https://github.com/user-attachments/assets/8258695d-c87a-4621-940a-dad8f2f396d7" width="300" />

---

# DSM-MEMBER-SRV (Member / Application Server) 🏬🗄️

<div align="center">
  <img width="429" height="462" alt="Q4F6X6c" src="https://github.com/user-attachments/assets/0c1c6f2c-54eb-4079-ab70-c9f22bd0582d" />
</div>

### I manage DSM-MEMBER-SRV, a Tier 1/2 member server in Des Moines that stores sensitive client PII/PHI. My focus is on maintaining STIG compliance, developing and applying PowerShell remediation scripts, validating controls with Tenable, and monitoring endpoint security events. I also assess potential lateral movement toward AD to ensure sensitive data remains protected and audit integrity is maintained. 🔐

## Tasks 📝
> - Run initial vulnerability and **STIG drift prevention** assessments, and develop/apply PowerShell remediation scripts to enforce STIG compliance.  
> - Perform daily security monitoring checks and validate compliance with Tenable vulnerability scans.  
> - Map potential lateral movement toward AD and document operational impacts and compliance status.

## 🔐 ControlPoint Leadership – DSM-MEMBER-SRV Updates

<img width="734" height="319" alt="OrC2tWW" src="https://github.com/user-attachments/assets/c90af939-938f-48ca-8780-c50f2f710df0" />

## Tech Stack💻 & Documnetation📄
| Category                 | Tools / Technologies                     | Documentation |
|--------------------------|-----------------------------------------|---------------|
| 🖥️ Operating System       | Windows Server (Member Server)          | 📜 Sensitive Data & Security Procedures |
| 🛠️ Compliance / Hardening  | STIG Benchmarks                          | 🗂️ Data classification and handling rules |
| ⚙️ Scripting / Automation  | PowerShell (STIG remediation)           | 🔒 Access control for PHI/PII |
| 🔍 Vulnerability Management | Tenable Nessus                           | ✅ Vulnerability management procedures |
| 📊 Reporting / Analysis     | Compliance reports, scan results        | 🛠️ Incident response (IR) scripts |
| 🚨 Incident Response       | Custom IR scripts                        | - |

---

# 📝 Lab Log – STIG Drift Practice on Windows Server 2025
> #### Date: 2025-12-30  
> #### Author: Joseph Knight  
> #### Environment: DSM-MEMBER-SRV (Des Moines) – Windows Server 2025  

### Today, I started a hands-on lab to practice **STIG compliance, drift detection, and remediation** on a Windows Server 2025 member server holding sensitive client PII/PHI. My goal is to understand how to maintain a secure environment, identify deviations from the baseline, and apply corrective actions safely. This log documents my step-by-step journey: detecting drift, remediating it, validating compliance, and setting up a daily monitoring script to automate drift checks. I’ll include **screenshots placeholders**, notes, and reflections as I progress. This lab is part of my ongoing learning process to improve my skills in **server hardening, compliance enforcement, and vulnerability management**. Every observation and action is helping me connect theory to practical application in a real-world enterprise environment. Let’s dive in! 🚀

<img width="669" height="402" alt="4nzHZda" src="https://github.com/user-attachments/assets/ab3c07e5-956d-418c-8084-a8c7f1b684c1" />

## **Step 0 – Lab Context & Setup** 🏁  
### I set up the lab environment and introduced controlled drift so I could practice detection and remediation. I created directories for **PHI** and **PII**, added test files, encrypted them, then weakened the password policy, disabled logon auditing, and added an unapproved admin user.  

<img width="648" height="167" alt="wqZzVz3" src="https://github.com/user-attachments/assets/1d163b30-908c-4e70-824e-48c7109b31d1" />
 
> #### ⚠️ This step is context only; I didn’t remediate here.  
> #### 👀 Observing drift outputs helps me understand what non-compliance looks like.

---
### [👉📄 Detect Drift, Remediate Drift & Validate Compliance](https://github.com/Jose01000111/ControlPoint-Health-Enterprise-Security-Compliance-STIG-EDR-Evaluation-Lab/commit/a5b3579170202d08a9712af4d4ef300f75d619bb)

## **Step 1 – Detect Drift** 🔍  
### I checked the password policy, auditing settings, and local users to identify deviations from STIG.  

<img width="616" height="368" alt="onCd4Br" src="https://github.com/user-attachments/assets/da0bab6e-ca41-4bb5-a069-2007f09302fd" />

> #### 🕵️ Detection is observation-focused; I needed to see drift before fixing it.  
> #### 🔑 Password policy was weak, auditing disabled, and LabAdmin user existed.  

---

## **Step 2 – Remediate Drift** 🛠️  
### I applied fixes to restore compliance: reset the password policy, re-enabled auditing, and removed unapproved admin accounts.  

<img width="726" height="519" alt="W6Dyojp" src="https://github.com/user-attachments/assets/2eac1238-02ce-4d20-aab2-ed8ad3840f2f" />

> #### 📌 Knowing the correct baseline is critical before applying changes.  
> #### ⚡ This step felt like corrective maintenance on the VM.  

---

## **Step 3 – Validate Compliance** ✅  
### After remediation, I confirmed the password policy, auditing, and user accounts were compliant.  

<img width="687" height="334" alt="vghmLbT" src="https://github.com/user-attachments/assets/27f2eefb-e68f-47af-9d99-ef05a889c0b2" />
  
> #### 🔍 Validation is essential to ensure remediation worked.  
> #### 💡 Seeing outputs match the STIG baseline gave confidence in compliance.  

---

## **Step 4 – Daily Monitoring Script** 🗓️  
### I created a daily monitoring script to automate drift detection. It checks password policy, auditing, and unapproved admins. Any drift is written to a report, and compliance status is printed to the console.  

### [👉📄 Daily Monitoring Script](https://github.com/Jose01000111/ControlPoint-Health-Enterprise-Security-Compliance-STIG-EDR-Evaluation-Lab/blob/main/Daily_STIG_Drift_Monitor.ps1)

<img width="719" height="705" alt="CGRQ1MC" src="https://github.com/user-attachments/assets/de56d0b9-25ad-4160-8eb0-6b6bd1b2bfac" />

> #### 🤖 Automation makes ongoing compliance manageable.  
> #### 🛡️ Learned to handle missing directories so the script runs safely the first time.  
> #### ⏱️ Scheduling the script in Task Scheduler is next to maintain continuous monitoring.  

---

### Reviewing Recent Events: DSM-MEMBER-SRV STIG Drift ⚠️📝⚙️

> ## Received a formal write-up for STIG drift 🚨, took notes 📝, updated policies 📑, and created a Master Compliance Script ⚙️ to enforce compliance.

---

## 🔐 ControlPoint Leadership – DSM-MEMBER-SRV Updates

<img width="714" height="609" alt="zCGhmok" src="https://github.com/user-attachments/assets/9f327cf6-af8a-4f00-954e-c29d40a8d7f0" />

### [👉📄 DSM-MEMBER-SRV Change Management & Policy Enforcement](https://github.com/Jose01000111/ControlPoint-Health-Enterprise-Security-Compliance-STIG-EDR-Evaluation-Lab/blob/main/DSM-MEMBER-SRV%20CHANGE%20MANAGEMENT%20%26%20POLICY%20ENFORCEMENT.pdf)

### [👉📄 DSM-MEMBER-SRV Master Compliance Script](https://github.com/Jose01000111/ControlPoint-Health-Enterprise-Security-Compliance-STIG-EDR-Evaluation-Lab/commit/a379c5018977c1fd0680ceed20e8787f0d601a6d)

---

# Security and Financial Assessment 🔐💰

### [👉📄Security and Financial Assessment](https://github.com/Jose01000111/ControlPoint-Health-Enterprise-Security-Compliance-STIG-EDR-Evaluation-Lab/blob/main/Security%20and%20Financial%20Assessment%20.pdf)

### Overview 📝
> Lab results for STIG compliance on DSM-MEMBER-SRV, a Tier 1/2 member/application server handling sensitive PII/PHI and financial data.  

### Findings ⚠️
> Initial assessment identified 7 STIG deviations, including weak password policies, disabled auditing, and an unauthorized admin account.  

### Remediation 🛠️
> All drift corrected: password and lockout policies enforced, auditing restored, and unauthorized accounts removed.  

### Monitoring 🤖
> Daily automated PowerShell script implemented to detect any future drift within 24 hours.  

### Compliance ✅
> Compliance improved from 71% → 100%, with all high-risk findings resolved.  

### Conclusion 🏆
> STIG enforcement ensures robust security, protects sensitive financial and personal data, and aligns with VA and government standards.



