terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "287a72ec-2d14-456f-a437-38140513e983"
  client_id       = "b33de76a-eba0-4756-b222-288bce49eaee"
  client_secret   = "FWi8Q~B8O29mb19~WoexzkftPTqMp2LLea6_Sci7"
  tenant_id       = "0f4ee63f-3379-4f5d-a3a1-586d51a6db3b"
}

resource "azurerm_resource_group" "RG1" {
  name     = "DevOps-Test-RG"
  location = "West Europe"
}

resource "azurerm_storage_account" "SG1" {
  name = "DevOps-SG"
  resource_group_name = azurerm_resource_group.RG1
  location = "West Europe"
  account_replication_type = "LRS"
  account_tier = "Standard"
}

