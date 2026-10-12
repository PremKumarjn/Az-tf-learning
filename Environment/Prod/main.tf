module "resource_group" {
  for_each                    = var.resource_group_name
  source                      = "../../modules/resource_group"
  azurerm_resource_group_name = each.value.name
  azurerm_location            = each.value.location
  tags                        = each.value.tag
}

module "storage_account" {

  for_each                         = var.storage_account
  source                           = "../../modules/storage"
  azurerm_storage_account_name     = each.value.name
  azurerm_resource_group_name      = each.value.resource_group_name
  azurerm_location                 = each.value.location
  azurerm_account_tier             = each.value.account_tier
  azurerm_account_replication_type = each.value.account_replication_type
  tags                             = each.value.tag
  # azurerm_storage_container_name   = each.value.container_name
  # azurerm_container_access_type    = each.value.container_access_type
}

module "storage_container" {
  for_each                       = var.storage_container
  source                         = "../../modules/storage_container"
  azurerm_storage_container_name = each.value.name
  azurerm_storage_account_id     = module.storage_account[each.value.storage_account_key].azurerm_storage_account_id
  azurerm_container_access_type  = each.value.container_access_type

  depends_on = [module.storage_account]
}

