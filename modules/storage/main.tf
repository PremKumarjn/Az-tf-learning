resource "azurerm_storage_account" "st1_vscode" {
    name = var.azurerm_storage_account_name
    resource_group_name = var.azurerm_resource_group_name
    location = var.azurerm_location
    account_tier = var.azurerm_account_tier
    account_replication_type = var.azurerm_account_replication_type

    lifecycle {
        prevent_destroy = true
    }
}