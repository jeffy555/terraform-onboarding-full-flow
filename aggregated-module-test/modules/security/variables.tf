variable "name" {
  description = "The name of the Network Security Group."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Network Security Group."
  type        = string
}

variable "location" {
  description = "The Azure location where the Network Security Group will be created."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the Network Security Group."
  type        = map(string)
}
