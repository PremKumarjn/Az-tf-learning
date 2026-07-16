resource "azurerm_resource_group" "rg1_vscode" {
    name     = var.azurerm_resource_group_name
    location = var.azurerm_location
    tags = var.tags

    lifecycle {
        prevent_destroy = false
    }
}
