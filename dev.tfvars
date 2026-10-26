owner                             = "platform-team"
cost_center                       = "spiritops-test"
worker_count_request_0b0753a5befb = 1
public_network_access_enabled     = true
shared_access_key_enabled         = true
storage_accounts = {
  test01 = {
    name                            = "stspiritopsskill2601"
    location                        = "southindia"
    account_tier                    = "Standard"
    account_kind                    = "StorageV2"
    account_replication_type        = "LRS"
    min_tls_version                 = "TLS1_2"
    https_traffic_only_enabled      = true
    allow_nested_items_to_be_public = false
    public_network_access_enabled   = true
    shared_access_key_enabled       = true

    resource_group_name = "rg-spiritops-demo-dev"
    tags                = { "CostCenter" = "spiritops-test", "Environment" = "dev", "Owner" = "platform-team" }
  },
  test02 = {
    name                            = "stspiritopsskill2602"
    location                        = "southindia"
    account_tier                    = "Standard"
    account_kind                    = "StorageV2"
    account_replication_type        = "LRS"
    min_tls_version                 = "TLS1_2"
    https_traffic_only_enabled      = true
    allow_nested_items_to_be_public = false
    public_network_access_enabled   = true
    shared_access_key_enabled       = true

    resource_group_name = "rg-spiritops-demo-dev"
    tags                = { "CostCenter" = "spiritops-test", "Environment" = "dev", "Owner" = "platform-team" }
  },
  test03 = {
    name                            = "stspiritopsskill2603"
    location                        = "southindia"
    account_tier                    = "Standard"
    account_kind                    = "StorageV2"
    account_replication_type        = "LRS"
    min_tls_version                 = "TLS1_2"
    https_traffic_only_enabled      = true
    allow_nested_items_to_be_public = false
    public_network_access_enabled   = true
    shared_access_key_enabled       = true

    resource_group_name = "rg-spiritops-demo-dev"
    tags                = { "CostCenter" = "spiritops-test", "Environment" = "dev", "Owner" = "platform-team" }
  },
  test04 = {
    name                            = "stspiritopsskill2604"
    location                        = "southindia"
    account_tier                    = "Standard"
    account_kind                    = "StorageV2"
    account_replication_type        = "LRS"
    min_tls_version                 = "TLS1_2"
    https_traffic_only_enabled      = true
    allow_nested_items_to_be_public = false
    public_network_access_enabled   = true
    shared_access_key_enabled       = true

    resource_group_name = "rg-spiritops-demo-dev"
    tags                = { "CostCenter" = "spiritops-test", "Environment" = "dev", "Owner" = "platform-team" }
  },
  test05 = {
    name                            = "stspiritopsskill2605"
    location                        = "southindia"
    account_tier                    = "Standard"
    account_kind                    = "StorageV2"
    account_replication_type        = "LRS"
    min_tls_version                 = "TLS1_2"
    https_traffic_only_enabled      = true
    allow_nested_items_to_be_public = false
    public_network_access_enabled   = true
    shared_access_key_enabled       = true

    resource_group_name = "rg-spiritops-demo-dev"
    tags                = { "CostCenter" = "spiritops-test", "Environment" = "dev", "Owner" = "platform-team" }
  }
}

cognitive_accounts = {
  openai = {
    name                               = "aoai-spiritops-skill-dev"
    kind                               = "OpenAI"
    sku_name                           = "S0"
    location                           = "eastus"
    custom_subdomain_name              = "aoai-spiritops-skill-dev"
    public_network_access_enabled      = true
    local_auth_enabled                 = false
    outbound_network_access_restricted = true

    resource_group_name = "rg-spiritops-demo-dev"
    tags                = { "CostCenter" = "spiritops-test", "Environment" = "dev", "Owner" = "platform-team" }
  },
  vision = {
    name                               = "vision-spiritops-skill-dev"
    kind                               = "ComputerVision"
    sku_name                           = "S1"
    location                           = "eastus"
    custom_subdomain_name              = "vision-spiritops-skill-dev"
    public_network_access_enabled      = true
    local_auth_enabled                 = false
    outbound_network_access_restricted = true

    resource_group_name = "rg-spiritops-demo-dev"
    tags                = { "CostCenter" = "spiritops-test", "Environment" = "dev", "Owner" = "platform-team" }
  }
}
