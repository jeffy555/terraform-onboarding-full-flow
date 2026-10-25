resource "azurerm_resource_group" "rg_spiritops_demo_dev" {
  name     = "rg-spiritops-demo-dev"
  location = "southindia"
  tags     = local.spiritops_required_tags
}

resource "azurerm_user_assigned_identity" "id_spiritops_demo_dev" {
  name                = "id-spiritops-demo-dev"
  resource_group_name = azurerm_resource_group.rg_spiritops_demo_dev.name
  location            = azurerm_resource_group.rg_spiritops_demo_dev.location
  tags                = local.spiritops_required_tags
}

resource "azurerm_network_security_group" "nsg_spiritops_demo_dev" {
  name                = "nsg-spiritops-demo-dev"
  resource_group_name = azurerm_resource_group.rg_spiritops_demo_dev.name
  location            = azurerm_resource_group.rg_spiritops_demo_dev.location
  tags                = local.spiritops_required_tags
}

resource "azurerm_role_assignment" "reader_role_assignment" {
  role_definition_name = "Reader"
  scope                = azurerm_resource_group.rg_spiritops_demo_dev.id
  principal_id         = azurerm_user_assigned_identity.id_spiritops_demo_dev.principal_id
  principal_type       = "ServicePrincipal"
}
