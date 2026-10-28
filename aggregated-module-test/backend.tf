terraform {
  backend "azurerm" {
    resource_group_name = "AICloudBuilder"
    storage_account_name = "spiritopsbackend"
    container_name = "test"
    key = "projects/jeffy555-terraform-onboarding-full-flow/7edde07b423112aaa1e5/terraform.tfstate"
    use_azuread_auth = true
  }
}
