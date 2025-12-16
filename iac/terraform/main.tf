resource "azurerm_resource_group" "rg" {
    name = "rg${var.project_name}infra${var.region_abbreviation}${var.environment}01"
    location = "${var.location}"
}

resource "azurerm_virtual_network" "vnet" {
    name                = "vnet${var.project_name}infra${var.region_abbreviation}${var.environment}01"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    address_space       = ["10.0.0.0/16"]

    tags = {
        Project     = var.project_name
        Environment = var.environment
    }
}

resource "azurerm_subnet" "subnet" {
    name                 = "snet${var.project_name}app${var.region_abbreviation}${var.environment}01"
    resource_group_name  = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = ["10.0.1.0/24"]
}
 
data "azurerm_subscription" "current" {}

/**
 * TO USE EXISTING VIRTUAL NETWORK OR SUBNET, UNCOMMENT THE FOLLOWING DATA RESOURCES.

    data "azurerm_virtual_network" "current" {
        resource_group_name = azurerm_resource_group.rg.name
    }

    data "azurerm_subnet" "current" {
        name                 = "default"
        virtual_network_name = data.azurerm_virtual_network.current.name
        resource_group_name  = azurerm_resource_group.rg.name
    }
 */

resource "azurerm_service_plan" "frontend" {
    name                = "asp${var.project_name}frontend${var.region_abbreviation}${var.environment}01"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    os_type             = "Linux"
    sku_name            = "B1"

    tags = {
        Project     = var.project_name
        Environment = var.environment
    }
}

resource "azurerm_linux_web_app" "frontend" {
    name                = "app${var.project_name}frontend${var.region_abbreviation}${var.environment}01"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    service_plan_id     = azurerm_service_plan.frontend.id

    site_config {
        always_on = false
    }

    tags = {
        Project     = var.project_name
        Environment = var.environment
    }
}

resource "azurerm_service_plan" "backend" {
    name                = "asp${var.project_name}backend${var.region_abbreviation}${var.environment}01"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    os_type             = "Linux"
    sku_name            = "B1"

    tags = {
        Project     = var.project_name
        Environment = var.environment
    }
}

resource "azurerm_linux_web_app" "backend" {
    name                = "app${var.project_name}backend${var.region_abbreviation}${var.environment}01"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    service_plan_id     = azurerm_service_plan.backend.id

    site_config {
        always_on = false
    }

    tags = {
        Project     = var.project_name
        Environment = var.environment
    }
}

resource "azurerm_key_vault" "kv" {
    name                = "kv${var.project_name}${var.region_abbreviation}${var.environment}01"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    tenant_id           = data.azurerm_subscription.current.tenant_id
    sku_name            = "standard"

    tags = {
        Project     = var.project_name
        Environment = var.environment
    }
}

# NO LONGER REQUIRED
resource "azurerm_cognitive_account" "openai" {
    name                = "cog${var.project_name}openai${var.region_abbreviation}${var.environment}01"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    kind                = "OpenAI"
    sku_name            = "S0"

    tags = {
        Project     = var.project_name
        Environment = var.environment
    }
}

# REPLACE WITH API KEY GENERATED IN OPENAI MODULE
resource "azurerm_key_vault_secret" "openai_api_key" {
    name         = "openai-api-key"
    value        = azurerm_cognitive_account.openai.primary_access_key
    key_vault_id = azurerm_key_vault.kv.id
}