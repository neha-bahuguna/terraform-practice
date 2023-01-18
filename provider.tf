terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }
}
provider "azurerm" {
  subscription_id = "enter your subscription_id here"
  client_id       = "enter your client_id here"
  client_secret   = "enter your client_secret here"
  tenant_id       = "enter your tenant_id here"
  features {}
}   