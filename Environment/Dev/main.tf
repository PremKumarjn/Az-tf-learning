module "resource_group" {

    //count = var.create_resource_group ? 1 : 0
    for_each = var.resource_group_name
    source = "../../modules/resource_group"
    
    //subscription_id = var.subscription_id
    # for_each = var.resource_group_name
    # azurerm_resource_group_name = var.resource_group_name
    # azurerm_location = var.location

    # tags = {
    #     stage = var.Environment
    # }
    azurerm_resource_group_name = each.value.name
    azurerm_location = each.value.location

    tags = each.value.tag
    //tags = merge(var.common_tags, each.value.tag)
}

module "storage_account" {
    //count = var.create_storage_account ? 1 : 0
    for_each = var.storage_account
    source = "../../modules/storage"

    
    azurerm_storage_account_name = each.value.name
    azurerm_resource_group_name = each.value.resource_group_name
    azurerm_location = each.value.location
    azurerm_account_tier = each.value.account_tier
    azurerm_account_replication_type = each.value.account_replication_type

    tags = each.value.tag
    depends_on = [module.resource_group]
    //tags = merge(var.common_tags, each.value.tag)

}