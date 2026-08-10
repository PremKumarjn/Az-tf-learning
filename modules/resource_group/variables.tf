variable "azurerm_resource_group_name" {
  type = string
}

variable "azurerm_location" {
  type = string
}

variable "tags" {
  type = map(string)
  //default = {}
}