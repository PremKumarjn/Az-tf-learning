module "resource_group" {
  source = "../../modules/resource_group"

  azurerm_resource_group_name = var.resource_group_name
  azurerm_location = var.location
  tags = {
    stage = var.Environment
  }
}
