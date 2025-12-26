# 💡 ControlPoint Health – Enterprise Hybrid Security Lab for STIG, EDR, and Risk-Based Compliance Assessment Across Critical and Non-Critical Systems

> ## ControlPoint Health, a nationwide health insurance provider with 15 offices 🏥, is implementing a hybrid security program to evaluate the effectiveness of preventive STIG hardening and detection-focused EDR monitoring 🛡️. This program targets both critical identity infrastructure and servers containing sensitive client PII and PHI, balancing regulatory compliance, operational cost, and enterprise risk 💼. The lab environment allows the security team to perform vulnerability assessments, enforce automated remediation through PowerShell scripts, monitor events via KQL, and evaluate detection capabilities across different system tiers. By simulating real-world conditions in Indianapolis and Des Moines offices, the organization aims to identify the most cost-efficient, secure, and scalable controls for enterprise-wide adoption, ensuring audit readiness, threat visibility, and protection of critical business operations.

This lab serves two purposes:  
> 1. **Evaluate security effectiveness** for critical and non-critical systems.  
> 2. **Analyze financial and compliance risk**, balancing operational cost against protection.  

💼 **Key Systems in the Lab:**  
> - **INDY-AD-DC (Indianapolis)** – Critical AD infrastructure supporting **sales and business operations**, baseline + EDR.  
> - **DSM-MEMBER-SRV (Des Moines)** – Server holding **client PII/PHI**, STIG-aligned + EDR for detection and compliance.  

🎯 **Objective:**  
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

## 📌Operational Directives (from CISO)

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


