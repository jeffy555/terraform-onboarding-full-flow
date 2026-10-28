output "id" {
  description = "Managed identity ARM ID."
  value       = azurerm_user_assigned_identity.main.id
}

output "principal_id" {
  description = "Managed identity principal ID."
  value       = azurerm_user_assigned_identity.main.principal_id
}

output "name" {
  description = "Managed identity name."
  value       = azurerm_user_assigned_identity.main.name
}

output "network_security_group_id" {
  description = "Test NSG ARM ID."
  value       = azurerm_network_security_group.test.id
}

output "role_assignment_id" {
  description = "Tag role assignment ARM ID."
  value       = azurerm_role_assignment.tag_access.id
}
