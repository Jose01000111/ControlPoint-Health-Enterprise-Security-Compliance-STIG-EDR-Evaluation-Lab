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


