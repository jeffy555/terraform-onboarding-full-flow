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
resource "azurerm_service_plan" "asp_spiritops_demo_dev" {
  name                = "asp-spiritops-demo-dev"
  os_type             = "Linux"
  sku_name            = "B1"
  worker_count        = 1
  resource_group_name = azurerm_resource_group.rg_spiritops_demo_dev.name
  location            = azurerm_resource_group.rg_spiritops_demo_dev.location
  tags                = local.spiritops_required_tags
}

resource "azurerm_linux_web_app" "app_spiritops_demo_dev" {
  name                = "app-spiritops-demo-dev"
  service_plan_id     = azurerm_service_plan.asp_spiritops_demo_dev.id
  https_only          = true
  resource_group_name = azurerm_resource_group.rg_spiritops_demo_dev.name
  location            = azurerm_resource_group.rg_spiritops_demo_dev.location
  tags                = local.spiritops_required_tags

  site_config {
    application_stack {
      node_version = "22-lts"
    }
    ftps_state          = "Disabled"
    minimum_tls_version = "1.2"
  }
}

resource "azurerm_storage_account" "stspiritopsdemotest01" {
  name                            = "stspiritopsdemotest01"
  account_tier                    = "Standard"
  account_kind                    = "StorageV2"
  account_replication_type        = "LRS"
  min_tls_version                 = "TLS1_2"
  https_traffic_only_enabled      = true
  allow_nested_items_to_be_public = false
  public_network_access_enabled   = var.public_network_access_enabled
  shared_access_key_enabled       = var.shared_access_key_enabled
  resource_group_name             = azurerm_resource_group.rg_spiritops_demo_dev.name
  location                        = azurerm_resource_group.rg_spiritops_demo_dev.location
  tags                            = local.spiritops_required_tags
}
resource "azurerm_storage_account" "stspiritopsskill" {
  for_each                        = var.storage_accounts
  name                            = each.value.name
  location                        = each.value.location
  account_tier                    = each.value.account_tier
  account_kind                    = each.value.account_kind
  account_replication_type        = each.value.account_replication_type
  min_tls_version                 = each.value.min_tls_version
  https_traffic_only_enabled      = each.value.https_traffic_only_enabled
  allow_nested_items_to_be_public = each.value.allow_nested_items_to_be_public
  public_network_access_enabled   = each.value.public_network_access_enabled
  shared_access_key_enabled       = each.value.shared_access_key_enabled
  resource_group_name             = azurerm_resource_group.rg_spiritops_demo_dev.name
  tags                            = local.spiritops_required_tags
}

resource "azurerm_cognitive_account" "cognitive_account" {
  for_each                           = var.cognitive_accounts
  name                               = each.value.name
  kind                               = each.value.kind
  sku_name                           = each.value.sku_name
  location                           = each.value.location
  custom_subdomain_name              = each.value.custom_subdomain_name
  public_network_access_enabled      = each.value.public_network_access_enabled
  local_auth_enabled                 = each.value.local_auth_enabled
  outbound_network_access_restricted = each.value.outbound_network_access_restricted
  resource_group_name                = azurerm_resource_group.rg_spiritops_demo_dev.name
  tags                               = local.spiritops_required_tags
}
