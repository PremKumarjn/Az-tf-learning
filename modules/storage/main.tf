resource "azurerm_storage_account" "st1_vscode" {
  name                     = var.azurerm_storage_account_name
  resource_group_name      = var.azurerm_resource_group_name
  location                 = var.azurerm_location
  account_tier             = var.azurerm_account_tier
  account_replication_type = var.azurerm_account_replication_type

  tags = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_storage_container" "st1container_vscode" {
  name                  = var.azurerm_storage_container_name
  storage_account_id    = azurerm_storage_account.st1_vscode.id
  container_access_type = var.azurerm_container_access_type
}