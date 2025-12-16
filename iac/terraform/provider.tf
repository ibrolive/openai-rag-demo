terraform {
    required_version = ">= 1.3.0"

    required_providers {
        azuread = {
            source = "hashicorp/azuread"
            version = ">= 2.10.0"
        }
        azurerm = {
            source = "hashicorp/azurerm"
            version = "= 4.20.0"
        }
    }
}
provider "azurerm" {
    features {}
}

provider "azuread" {
    # configure Azure AD provider if needed (tenant_id, client_id, client_secret),
    # or authenticate via environment variables / Azure CLI as recommended.
}