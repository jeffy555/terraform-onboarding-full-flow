terraform {
  backend "azurerm" {
    resource_group_name = "AICloudBuilder"
    storage_account_name = "spiritopsbackend"
    container_name = "test"
    key = "projects/jeffy555-terraform-onboarding-full-flow/2c0dffca7d3d8fc45b1d/terraform.tfstate"
    use_azuread_auth = true
  }
}
