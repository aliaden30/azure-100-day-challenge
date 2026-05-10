# 📘 Day 1 — Your First RBAC Assignment: Give Without Giving Too Much

## 🔍 Overview
Day 1 focuses on Azure Role-Based Access Control (RBAC), the foundation of cloud security.  
The goal is simple but essential: **assign the Reader role to a test user at the resource group scope**, allowing them to view resources but preventing them from modifying or deleting anything.

This teaches the principle of **least privilege**, one of the most important security practices in Azure.

---

## 🧰 Tools Used
- Azure Portal  
- Microsoft Entra ID  
- Azure RBAC (IAM)

---

## 🧪 What I Did
- Created a resource group named **rg-rbac-practice**  
- Created a test user in Microsoft Entra ID  
- Assigned the **Reader** role at the resource group scope  
- Logged in as the test user to validate permissions  
- Confirmed the user could view but not create or delete resources  
- Verified the RBAC assignment in the IAM blade  

---

## 📸 Screenshots

### 1. Resource Group Created  
`./screenshots/01-rg-created.png`

### 2. Resource Group Overview  
`./screenshots/02-rg-overview.png`

### 3. IAM Role Assignment  
`./screenshots/03-iam-role-assignment.png`

### 4. Test User Permission Error  
`./screenshots/04-permission-error.png`

### 5. Final IAM Validation  
`./screenshots/05-final-iam-validation.png`

---

## 📝 Steps Performed

### **1️⃣ Create the Resource Group**
- Azure Portal → Resource groups → Create  
- Name: **rg-rbac-practice**  
- Region: **UK West**  
- Create  

### **2️⃣ Create the Test User**
- Microsoft Entra ID → Users → New user  
- Username: `testrbacuser@yourdomain.onmicrosoft.com`  
- Name: **Test RBAC User**  
- Copy the temporary password  

### **3️⃣ Assign the Reader Role**
- Open **rg-rbac-practice**  
- Access control (IAM) → Add → Add role assignment  
- Select **Reader** → Next  
- Select **Test RBAC User** → Review + assign  

### **4️⃣ Validate Permissions**
- Open Incognito window  
- Sign in as the test user  
- Try to delete or create a resource  
- Expected: **AuthorizationFailed**  

### **5️⃣ Final Verification**
- Back in your main account  
- IAM → Role assignments  
- Confirm:
  - Owner — you  
  - Reader — Test RBAC User  

---

## 📜 Commands Used 
```powershell
# No PowerShell commands were required for this challenge.
# All steps were completed through the Azure Portal UI.

## 🎓 What I Learned
- How RBAC controls access in Azure  
- The difference between roles, scopes, and principals  
- Why the Reader role is safe for audit-only access  
- How to assign roles at the resource group scope  
- How to validate least-privilege access using a test user  

## 🔑 Key Takeaway
Least privilege is the backbone of cloud security — give only what is needed, nothing more.


