variable "owner" {
  type        = string
  description = "Approved resource owner."
}

variable "cost_center" {
  type        = string
  description = "Approved cost allocation."
}

variable "foundation_location" {
  type        = string
  description = "Azure region chosen by the root caller."
}

variable "foundation_name" {
  type        = string
  description = "Resource group name chosen by the root caller."
}

variable "foundation_network_security_group_name" {
  type        = string
  description = "Name of the unattached foundation NSG."
}

variable "security_name" {
  type        = string
  description = "The name of the Network Security Group."
}

