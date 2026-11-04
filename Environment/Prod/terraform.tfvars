subscription_id = "2b6577e9-86ba-4f96-abd5-dad4e292559c"

resource_group_name = {
  resource_group_details = {
    name     = "RG3-VSCode-Prod"
    location = "East US"
    tag = {
      Environment = "Prod"
    }
  }
}

storage_account = {
  storage_account_details = {
    name                     = "cicd1storage9876prod"
    resource_group_name      = "RG3-VSCode-Prod"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tag = {
      Environment = "Prod"
      Owner       = "prem"
    }
    # container_name        = "cicd01container9876"
    # container_access_type = "private"
  }
}

storage_container = {
  # storage_container_details = {
  #   name                  = "cicd01container9876prod"
  #   storage_account_key   = "storage_account_details"
  #   container_access_type = "private"
  # }
}