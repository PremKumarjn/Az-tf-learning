resource "azurerm_key_vault" "kv1_vscode"{
    name                        = var.azurerm_key_vault_name
    resource_group_name = var.azurerm_key_vault_name
    location                    = var.azurerm_location
    tenant_id                  = var.azurerm_tenant_id
    sku_name                   = var.azurerm_key_vault_sku_name
}