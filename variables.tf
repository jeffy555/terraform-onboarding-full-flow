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
