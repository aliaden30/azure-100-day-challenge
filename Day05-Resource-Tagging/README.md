# Day 05 — Azure Resource Tagging & Governance

## Business Context
Cloud teams rely on consistent tagging to support governance, cost reporting, ownership tracking, automation, and lifecycle management. In enterprise environments, tags are essential for maintaining visibility and enforcing organizational standards across large Azure estates.

---

## Objective
Implement standardized Azure resource tagging to improve governance, organization, and operational clarity across the subscription.

---

## What I Did
- Audited Azure resources for missing or inconsistent tags
- Identified resources lacking required governance metadata
- Applied standardized tags to improve organization and visibility
- Validated tag assignments within the Azure Portal
- Documented findings, validation steps, and lessons learned

---

## Skills Demonstrated
- Azure Resource Tagging
- Cloud Governance & Compliance Awareness
- Azure Portal Administration
- Infrastructure Organization
- Cloud Documentation

---

## Before & After Comparison

### Before
- Resources had inconsistent or missing tags
- Ownership and environment context were unclear
- Resources were harder to manage, filter, and report on

### After
- Standardized tags applied across resources
- Clear ownership, environment, and purpose metadata
- Improved governance, cost visibility, and operational clarity

---

## Screenshots

> Screenshots were sanitized to remove personal and tenant-specific information before publication.

### Step 3 — Resource List
![Step 3](screenshots/step3-all-resources.png)

### Step 4 — Untagged Resources Audit
![Step 4](screenshots/step4-untagged-audit.png)

### Step 5 — Tag Applied Successfully
![Step 5](screenshots/step5-tagged-resource.png)

### Step 6 — Validation
![Step 6](screenshots/step6-validation.png)
---

## Validation
Confirmed that Azure tags were successfully applied and visible on the target resources within the Azure Portal. Verified that metadata fields reflected the correct values and were consistently formatted.

---

## Automation & Scripting

### PowerShell Commands Used

```powershell
# List all resources with their tags
Get-AzResource | Select-Object Name, ResourceType, Tags

# Apply tags to a specific resource
Set-AzResource -ResourceId <resource-id> -Tag @{ Owner="Ali"; Environment="Dev" } -Force
```

### Azure CLI Commands Used

```bash
# List resources and tags
az resource list --query "[].{name:name,type:type,tags:tags}"

# Apply tags to a resource
az resource tag --ids <resource-id> --tags Owner=Ali Environment=Dev
```

---

## Troubleshooting
- Some Azure services support tagging differently depending on API implementation
- Certain system-managed resources may not allow tags
- Resolved issues by checking Azure documentation for tag support per resource type
- Ensured consistent naming conventions to avoid mismatched tag values

---

## Why This Matters
Consistent tagging is critical for:

- Cost allocation and reporting
- Ownership and accountability
- Environment separation
- Automation and policy enforcement
- Governance at scale

Without proper tagging, cloud environments become difficult to manage, audit, and optimize.

---

## What I Learned
Different Azure resource types may support tagging differently depending on the service and API implementation. Consistency in tag naming and structure is essential for governance, automation, and long-term maintainability.

---

## Key Takeaway
Resource tagging is a foundational governance practice that improves cost management, operational clarity, and organizational control in Azure environments.
