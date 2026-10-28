output "name" {
  description = "Created resource group name for other child modules."
  value       = azurerm_resource_group.main.name
}

output "location" {
  description = "Created resource group region for other child modules."
  value       = azurerm_resource_group.main.location
}

output "id" {
  description = "Created resource group ID."
  value       = azurerm_resource_group.main.id
}
