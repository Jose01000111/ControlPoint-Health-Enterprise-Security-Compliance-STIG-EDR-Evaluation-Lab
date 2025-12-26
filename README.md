# 💡 ControlPoint Health – Enterprise Hybrid Security Lab for STIG, EDR, and Risk-Based Compliance Assessment

<p align="center">
  <img src="https://github.com/user-attachments/assets/847ae5d2-60a3-4eb2-95df-31f767bbab40" 
       alt="KzO2BF7" 
       width="751" 
       height="496" />
</p>

### ControlPoint Health, a nationwide health insurance provider with 15 offices 🏥, is running a hybrid security program to test preventive STIG hardening and detection-focused EDR monitoring 🛡️. The lab focuses on critical identity infrastructure and servers holding sensitive PII/PHI, balancing compliance, cost, and enterprise risk 💼. Teams perform vulnerability assessments, apply automated PowerShell remediation, monitor events via KQL, and evaluate detection across system tiers. By simulating real-world conditions in Indianapolis and Des Moines, the organization identifies cost-efficient, secure, and scalable controls for enterprise-wide adoption.

## 💼 **Key Systems in the Lab:**  
> - **INDY-AD-DC (Indianapolis)** – Critical AD infrastructure supporting **sales and business operations**, baseline + EDR.  
> - **DSM-MEMBER-SRV (Des Moines)** – Server holding **client PII/PHI**, STIG-aligned + EDR for detection and compliance.  

## 🎯 **Objective:**  
> - Determine **where STIG controls are necessary** versus where **baseline security + EDR is sufficient**.  
> - Identify **cost-efficient security strategies** while maintaining compliance.  
> - Develop a **scalable model** for enterprise-wide adoption across all offices.  

---

## 👥 ControlPoint Health – Staff Overview

| Staff / Role | Location | Responsibilities |
|--------------|---------|-----------------|
| 🛡️ **CISO – Maria Thompson** | Nationwide | Owns overall security posture; approves hybrid model; final authority on risk acceptance |
| 🖥️ **Director of Cybersecurity Ops – Alex Patel** | Nationwide | Defines endpoint & identity strategy; manages EDR deployment; reviews alert trends and detection effectiveness |
| 📜 **Director of Risk & Compliance – Samantha Lee** | Nationwide | Establishes HIPAA-aligned compliance policies; determines STIG applicability; evaluates audit and regulatory impact |
| 🔍 **Vulnerability Management Lead – David Chen** | Nationwide | Oversees Tenable scanning; reviews STIG compliance; prioritizes remediation based on risk |
| ⚙️ **System Administrator – Jose Guerrero** | Indianapolis | Operates INDY-AD-DC; manages baseline security; creates PowerShell remediation scripts; runs Tenable scans; monitors KQL events |
| 🛡️ **Security Administrator – Joseph Knight** | Des Moines | Operates DSM-MEMBER-SRV; enforces STIG; monitors EDR; conducts vulnerability assessments; maps potential threats via KQL |

# Lab 1 – INDY-AD-DC (Active Directory Domain Controller) 🏢🛡️
# Lab 2 – DSM-MEMBER-SRV (Member / Application Server) 🏬🗄️

---

## 📌Operational Directives (from CISO) to Indianapolis & Des Moines Offices

<table>
<tr>
<td>

**Work Order 1 – INDY-AD-DC**  
- Assigned to: ⚙️ Jose Guerrero  
- CC: Alex Patel, Samantha Lee, David Chen  
- Task: Execute baseline + EDR evaluation; run vulnerability assessment; implement PowerShell scripts for AD account and security management; generate daily KQL threat mapping; document operational and security impact.  

<img src="https://github.com/user-attachments/assets/ae49ad25-684e-4846-9bf6-9e4fed311d56" width="300" />

</td>
<td>

**Work Order 2 – DSM-MEMBER-SRV**  
- Assigned to: 🛡️ Joseph Knight  
- CC: Alex Patel, Samantha Lee, David Chen  
- Task: Enforce STIG compliance on server holding PII/PHI; run Tenable vulnerability scan; monitor EDR alerts; map events via KQL; document risk exposure and mitigation recommendations.  

<img src="https://github.com/user-attachments/assets/8258695d-c87a-4621-940a-dad8f2f396d7" width="300" />

</td>
</tr>
</table>

# Lab 1 – INDY-AD-DC (Active Directory Domain Controller) 🏢🛡️

<div align="center">
  <img width="424" height="416" alt="nDfUJrc" src="https://github.com/user-attachments/assets/e68a2d03-bbe6-47f7-86d6-b53b310acb01" />
</div>

### I manage INDY-AD-DC, a Tier 0 Active Directory Domain Controller in the Indianapolis office. I focus on securing critical identity infrastructure, performing baseline hardening, monitoring Microsoft Defender EDR, running daily PowerShell and KQL checks, and ensuring user and group management scripts are operational. I map authentication flows and generate reports to detect lateral movement and maintain audit integrity. 🔒

## Tasks 📝
> - Map AD authentication flows and access paths, and conduct baseline vulnerability assessments.  
> - Implement and maintain user/group management scripts and perform daily PowerShell security checks.  
> - Run **daily KQL monitoring scripts** to detect anomalies and suspicious activity, and track alerts via Microsoft Defender EDR.  
> - Conduct Tenable vulnerability scans to assess system security and generate operational/security reports.

## 🔐 ControlPoint Leadership – INDY-AD-DC Updates
<img width="692" height="436" alt="Nu1MCVM" src="https://github.com/user-attachments/assets/612e2864-434f-41cd-9f1d-b1ecad54c924" />

## Tech Stack 💻
| Category                 | Tools / Technologies                     |
|--------------------------|-----------------------------------------|
| Operating System         | Windows Server (Active Directory)       |
| Security / Monitoring    | Microsoft Defender EDR                   |
| Scripting / Automation   | PowerShell, KQL                          |
| Vulnerability Management | Tenable Nessus                           |
| Identity Management      | Active Directory, custom scripts        |
| Reporting / Analysis     | KQL reports, authentication flow mapping|
| Incident Response        | Custom IR scripts                        |

---

# Lab 2 – DSM-MEMBER-SRV (Member / Application Server) 🏬🗄️

#lab-2--dsm-member-srv-member--application-server-
<div align="center">
  <img width="429" height="462" alt="Q4F6X6c" src="https://github.com/user-attachments/assets/0c1c6f2c-54eb-4079-ab70-c9f22bd0582d" />
</div>

### I manage DSM-MEMBER-SRV, a Tier 1/2 member server in Des Moines that stores sensitive client PII/PHI. My focus is on maintaining STIG compliance, developing and applying PowerShell remediation scripts, conducting daily KQL monitoring, and validating controls with Tenable. I also assess potential lateral movement toward AD to ensure sensitive data remains protected and audit integrity is maintained. 🔐

## Tasks 📝
> - Run initial vulnerability and **STIG drift prevention** assessments, and develop/apply PowerShell remediation scripts to enforce STIG compliance.  
> - Perform daily KQL monitoring checks and validate compliance with Tenable vulnerability scans.  
> - Map potential lateral movement toward AD and document operational impacts and compliance status.

## 🔐 ControlPoint Leadership – DSM-MEMBER-SRV Updates
<img width="732" height="391" alt="dm4aw9a" src="https://github.com/user-attachments/assets/ec52664c-2070-4d6f-8b9b-90b034abb597" />

## Tech Stack 💻
| Category                 | Tools / Technologies                     |
|--------------------------|-----------------------------------------|
| Operating System         | Windows Server (Member Server)          |
| Compliance / Hardening   | STIG Benchmarks                          |
| Scripting / Automation   | PowerShell (STIG remediation), KQL      |
| Vulnerability Management | Tenable Nessus                           |
| Reporting / Analysis     | KQL reports, Tenable compliance checks  |
| Incident Response        | Custom IR scripts                        |



