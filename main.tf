terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.59.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}

module "ResourceGroup" {
  source   = "./ResourceGroup"
  rgname   = var.rgname
  location = var.location
}

module "StorageAccount" {
  source   = "./StorageAccount"
  saname   = var.saname
  rgname   = module.ResourceGroup.rg_name_out
  location = var.location
}