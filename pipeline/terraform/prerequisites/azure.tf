﻿terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.21.0"
    }
  }

  required_version = ">=1.2.4"
  backend "azurerm" {
  }
}

provider "azurerm" {
  features {}
}