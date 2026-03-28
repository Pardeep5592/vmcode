terraform {
  backend "azurerm" {
    resource_group_name  = "rg-001"
    storage_account_name = "stg0010"
    container_name       = "cont001"
    key                  = "terraform.tfstate"

  }


  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.66.0"
    }
  }
}

provider "azurerm" {

  features {}
  subscription_id = "b6f561a6-4648-410f-a061-afe1f81bf844"
}
