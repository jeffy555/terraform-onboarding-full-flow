variable "owner" {
  description = "The owner of the resources."
  type        = string
}

variable "cost_center" {
  description = "The cost center for the resources."
  type        = string
}
variable "worker_count_request_0b0753a5befb" {
  description = "The number of workers for the App Service plan."
  type        = number
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Reviewed public_network_access_enabled for stspiritopsdemotest01."
}

variable "shared_access_key_enabled" {
  type        = bool
  description = "Reviewed shared_access_key_enabled for stspiritopsdemotest01."
}
variable "storage_accounts" {
  description = "Map of storage accounts to create."
  type = map(object({
    name                            = string
    location                        = string
    account_tier                    = string
    account_kind                    = string
    account_replication_type        = string
    min_tls_version                 = string
    https_traffic_only_enabled      = bool
    allow_nested_items_to_be_public = bool
    public_network_access_enabled   = bool
    shared_access_key_enabled       = bool
    resource_group_name             = string
    tags                            = map(string)
  }))
}

variable "cognitive_accounts" {
  description = "Map of cognitive accounts to create."
  type = map(object({
    name                               = string
    kind                               = string
    sku_name                           = string
    location                           = string
    custom_subdomain_name              = string
    public_network_access_enabled      = bool
    local_auth_enabled                 = bool
    outbound_network_access_restricted = bool
    resource_group_name                = string
    tags                               = map(string)
  }))
}
