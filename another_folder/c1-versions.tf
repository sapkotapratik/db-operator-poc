# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  #required_version = "~> 1.0.0"
  required_providers {
      azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">=3.0"
    }
  }
    # Remote backend in Azure Storage
  backend "azurerm" {
    resource_group_name   = "backend-stg-rg"
    storage_account_name  = "stgbackend12" # Storage Account (globally unique)
    container_name        = "tfstatekalyan"           # Blob container
    key                   = "kalyanterraform.tfstate"   # State file name
  }
}

# Provider Block
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}