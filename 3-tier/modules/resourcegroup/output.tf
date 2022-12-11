output "resource_group_name" {
    value = azurerm_resource_group.3-tier.name
    description = "Name of the resource group."
}

output "location_id" {
    value = azurerm_resource_group.3-tier.location
    description = "Location id of the resource group"
}
