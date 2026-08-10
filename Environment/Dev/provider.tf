terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.77.0"
    }
  }
  #State Locking and Remote State Storage
  # backend "azurerm" {
  #   resource_group_name  = "RG3-VSCode-Dev"
  #   storage_account_name = "demo1storage987"
  #   container_name       = "demo1container987"
  #   key                  = "terraform.tfstate"
  # }
}


provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

