# 📘 Day 2 — Azure Resource Inventory

## 🔍 Overview
Collected a full Azure Resource Inventory using **PowerShell** and **Azure Resource Graph**.  
This is a real‑world task used for governance, security audits, cost optimisation, and environment reviews.

---

## 🧰 Tools Used
- Azure Cloud Shell (PowerShell)  
- Azure Resource Graph  
- PowerShell scripting  
- CSV export  

---

## 📜 Script
```powershell
$resources = Search-AzGraph -Query "Resources | project name, type, location, resourceGroup"
$resources | Format-Table -AutoSize
$resources | Export-Csv -Path AzureInventory.csv -NoTypeInformation

📁 Output Files
| File | Description |
| --- | --- |
| **AzureInventory.ps1** | Script used to collect the inventory |
| **AzureInventory.csv** | Exported list of Azure resources |
| **step2-inventory-table.png** | Inventory table output |
| **step3-filtered-table.png** | Filtered results |
| **step5-script-output.png** | Script execution |

## 📸 Screenshots

### 🖼️ Inventory Table (Step 2)
![Step 2 – Inventory Table](./step2-inventory-table.png)

### 🖼️ Filtered Resource View (Step 3)
![Step 3 – Filtered Table](./step3-filtered-table.png)

### 🖼️ Script Execution Output (Step 5)
![Step 5 – Script Output](./step5-script-output.png)


🧩 What This Shows
Ability to automate Azure tasks

Understanding of Resource Graph

Real‑world reporting workflow

Clean documentation skills
