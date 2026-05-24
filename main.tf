terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features { }
  subscription_id = "2b6577e9-86ba-4f96-abd5-dad4e292559c"
}

resource "azurerm_resource_group" "rg1" {
  name     = "RG1-VSCode"
  location = "centralindia"
}
