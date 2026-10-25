locals {
  common_tags = {
    Owner       = var.owner
    CostCenter  = var.cost_center
    Environment = "dev"
  }
}

locals {
  spiritops_required_tags = {
    Environment = "dev"
    Owner       = "platform-team"
    CostCenter  = "spiritops-test"
  }
}
