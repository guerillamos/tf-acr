terraform {
  backend "azurerm" {
    resource_group_name  = "storage"
    storage_account_name = "alphatf"
    container_name       = "tfstate"
    key                  = "-acr-dev.tfstate"
  }
}

# Configure the Azure provider
provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x. 
  # If you are using version 1.x, the "features" block is not allowed.
  version = "~>2.39.0"
  features {}
}