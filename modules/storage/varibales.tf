variable "azurerm_storage_account_name" {
    type        = string
}
variable "azurerm_resource_group_name" {
    type        = string
}
variable "azurerm_location" {
    type        = string
}
variable "azurerm_account_tier" {
    type        = string
}
variable "azurerm_account_replication_type" {
    type        = string
}
variable "tags" {
    type = map(string)
}