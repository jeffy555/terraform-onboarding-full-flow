variable "name" {
  type        = string
  description = "Managed identity name."
}

variable "resource_group_name" {
  type        = string
  description = "Reviewed resource group."
}

variable "location" {
  type        = string
  description = "Approved Azure region."
}

variable "network_security_group_name" {
  type        = string
  description = "Unattached test NSG name."
}

variable "scope" {
  type        = string
  description = "Reviewed group ARM scope."
}

variable "tags" {
  type        = map(string)
  description = "Shared governance tags."
}
