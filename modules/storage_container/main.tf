resource "azurerm_storage_container" "st1container_VSCode" {
  name                  = var.azurerm_storage_container_name
  storage_account_id    = var.azurerm_storage_account_id 
  container_access_type = var.azurerm_container_access_type
}