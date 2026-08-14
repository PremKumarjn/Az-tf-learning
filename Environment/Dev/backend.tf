terraform {
    backend "azurerm" {
        resource_group_name  = "RG3-VSCode-Dev"
        storage_account_name = "cicd1storage987"
        container_name       = "cicd01container987"
        key                  = "dev.tfstate"
    }
}