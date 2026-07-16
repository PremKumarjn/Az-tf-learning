variable "subscription_id" {
    type        = string
}
variable "resource_group_name" {
    //type        = string
    
    type = map(object({
        name     = string
        location = string
        tag      = map(string)
    }))
    default = {}
}
# variable "location" {
#     type        = string

# }
# variable "Environment" {
#     type = string
# }

variable "storage_account" {
    type        = map(object({
        name = string
        resource_group_name = string
        location = string
        account_tier = string
        account_replication_type = string
        tag = map(string)
    }))
    default = {}
}

# variable "storage_account_name" {
#     type        = string
# }
# variable "account_tier" {
#     type        = string
# }
# variable "account_replication_type" {
#     type        = string
# }
# variable "create_resource_group" {
#     type = bool
#     default = true
# }
# variable "create_storage_account" {
#     type = bool
#     default = true
# }