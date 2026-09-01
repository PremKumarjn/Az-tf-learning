#subscription 
subscription_id = "2b6577e9-86ba-4f96-abd5-dad4e292559c"

# create_resource_group = true
# create_storage_account = true

# #resource group
# resource_group_name = "RG2-VSCode-Dev"
# location = "central india"
# Environment = "Dev"
# storage_account_name = "demo1storage"
# account_tier = "Standard"
# account_replication_type = "LRS"

resource_group_name = {
  resource_group_1 = {
    name     = "RG5-VSCode-Dev"
    location = "central india"
    tag = {
      Environment = "Dev"
      Owner       = "prem"
    }
  }
}
storage_account = {
  storage_account_1 = {
    name                     = "cicd1storage9876"
    resource_group_name      = "RG3-VSCode-Dev"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tag = {
      Environment = "Dev"
      Owner       = "prem"
    }
  }
  #   container_name        = "cicd01container9876"
  #   container_access_type = "private"
  # }
}
