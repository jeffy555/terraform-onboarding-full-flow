# Pinned GitHub snapshot: git::https://github.com/jeffy555/terraform-onboarding-full-flow.git//modules/aggregated-foundation?ref=1b8025632e31f7087ac9837fb795ee0be6e65712
# Source digest: 8711af27d30215882053c2e6d7aa741ba81c11ac4b9e1697f36801773dc41abf
module "foundation" {
  source                      = "./modules/foundation"
  location                    = var.foundation_location
  name                        = var.foundation_name
  network_security_group_name = var.foundation_network_security_group_name
  tags                        = local.required_tags
}

# Pinned GitHub snapshot: git::https://github.com/jeffy555/terraform-onboarding-full-flow.git//modules/child-flow-validation?ref=1b8025632e31f7087ac9837fb795ee0be6e65712
# Source digest: 3c4705a99bf84d9252a6a3288ca2f43971636a6f796606f545c3737035db2bbb
module "security" {
  source              = "./modules/security"
  location            = module.foundation.location
  name                = var.security_name
  resource_group_name = module.foundation.name
  tags                = local.required_tags
}

