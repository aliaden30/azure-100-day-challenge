$resources = Get-AzResource

Write-Host "Total resources found: $($resources.Count)" -ForegroundColor Cyan

$resources |
Sort-Object ResourceType |
Format-Table Name, ResourceType, Location, ResourceGroupName -AutoSize

$resources |
Select-Object Name, ResourceType, Location, ResourceGroupName |
Export-Csv -Path AzureInventory.csv -NoTypeInformation