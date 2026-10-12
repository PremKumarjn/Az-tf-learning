variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = map(object({
    name     = string
    location = string
    tag      = map(string)

  }))
}

variable "storage_account" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tag                      = map(string)
    # container_name           = string
    # container_access_type    = string
  }))
}

variable "storage_container" {
  type = map(object({
    name                  = string
    storage_account_key   = string
    container_access_type = string
  }))
}