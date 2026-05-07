Day 2 — Azure Resource Inventory
🔍 What I Did
Automated an Azure Resource Inventory using PowerShell + Azure Resource Graph to list all resources across the subscription.

This is a real cloud engineering task used for:

Governance

Security reviews

Cost optimisation

Environment audits

🛠 Tools Used
Azure Cloud Shell (PowerShell)

Azure Resource Graph

PowerShell scripting

CSV reporting

📜 Script Used
powershell
$resources = Search-AzGraph -Query "Resources | project name, type, location, resourceGroup"
$resources | Format-Table -AutoSize
$resources | Export-Csv -Path AzureInventory.csv -NoTypeInformation
📁 Output Files
File	Description
AzureInventory.ps1	Script used to collect the inventory
AzureInventory.csv	Exported list of Azure resources
step2-inventory-table.png	Full inventory table
step3-filtered-table.png	Filtered results
step5-script-output.png	Script execution


📸 Key Screenshots
Inventory Table
![Step 2 – Inventory Table](./step2-inventory-table.png)

Filtered View
![Step 3 – Filtered Table](./step3-filtered-table.png)

Script Execution
![Step 5 – Script Output](./step5-script-output.png)

🧩 Why This Matters
This task demonstrates:

Automation skills

Azure governance understanding

Ability to work with Resource Graph

Real‑world reporting workflows
