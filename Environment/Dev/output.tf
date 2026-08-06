output "resource_group_name" {
  value = {
    for rg_key, rg_value in module.resource_group :
    rg_key => rg_value.azurerm_resource_group_name
  }
}

output "storage_account_name" {
  value = {
    for str_key, str_value in module.storage_account :
    str_key => str_value.azurerm_storage_account
  }
}