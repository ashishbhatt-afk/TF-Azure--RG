terraform {
  backend "azurerm" {
    #   subscription_id       = "da74xxxx-9c9a-xxxx-8fae-xxxxxxxxxxxx"
    subscription_id      = "0008a405-852b-4afc-9587-8de9561a9db1"
    resource_group_name  = "test"
    storage_account_name = "foreverything1" # Storage account used for backend
    container_name       = "test-container"
    key                  = "terraform.tfstate" # Terraform State file
  }
}
# Azurerm providers declaration
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.42.0"
    }
  }
  #required_version = ">= 0.13"
}
provider "azurerm" {
  features {}
  skip_provider_registration = true
}

module "resource_group" {
  source             = "../terraform-modules/resource_group"
  rg_Name            = var.rg_Name
  location           = var.location
}