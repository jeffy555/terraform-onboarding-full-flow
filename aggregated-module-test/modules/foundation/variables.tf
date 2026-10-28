variable "name" {
  type        = string
  description = "Resource group name chosen by the root caller."
}

variable "location" {
  type        = string
  description = "Azure region chosen by the root caller."
}

variable "network_security_group_name" {
  type        = string
  description = "Name of the unattached foundation NSG."
}

variable "tags" {
  type        = map(string)
  description = "Governance tags supplied by the root caller."
}
