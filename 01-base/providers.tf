terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.107.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "pstfstatepol"
    container_name       = "tfstate"
    key                  = "terraform.tfstate/01-base"
  }
}

provider "azurerm" {
  features {}
}
