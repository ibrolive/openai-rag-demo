resource "azurerm_cognitive_account" "this" {
  name                = var.cog_name
  location            = var.openai_location
  resource_group_name = var.resource_group_name
  kind                = var.cog_kind
  sku_name            = var.sku_name
  tags                = var.tags

  public_network_access_enabled      = false
  outbound_network_access_restricted = false

  custom_subdomain_name = var.custom_subdomain_name

  network_acls {
    default_action = "Deny"
    virtual_network_rules {
      ignore_missing_vnet_service_endpoint = true
      subnet_id                            = var.subnet_id
    }
  }

  identity {
    type = "SystemAssigned"
  }
}

/*
 * USE ONLY IF PRIVATE ENDPOINT IS REQUIRED
 *
resource "azurerm_private_endpoint" "endpoint" {
  name                = var.private_endpoint_name
  location            = var.openai_private_endpoint_location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "psc-${azurerm_cognitive_account.this.name}"
    private_connection_resource_id = azurerm_cognitive_account.this.id
    is_manual_connection           = false
    subresource_names              = ["account"]
  }
}
*/


resource "azurerm_cognitive_deployment" "embedding" {
  count = length(var.embedding_models)

  name                   = var.embedding_models[count.index].name
  cognitive_account_id   = azurerm_cognitive_account.this.id
  version_upgrade_option = var.embedding_models[count.index].version_upgrade_option

  model {
    format  = "OpenAI"
    name    = var.embedding_models[count.index].name
    version = var.embedding_models[count.index].version
  }

  sku {
    name     = var.embedding_models[count.index].sku_type
    capacity = var.embedding_models[count.index].quota
  }
}

resource "azurerm_cognitive_deployment" "gpt_models" {
  count = length(var.gpt_models)

  name                   = var.gpt_models[count.index].name
  cognitive_account_id   = azurerm_cognitive_account.this.id
  version_upgrade_option = var.gpt_models[count.index].version_upgrade_option

  model {
    format  = "OpenAI"
    name    = var.gpt_models[count.index].name
    version = var.gpt_models[count.index].version
  }

  sku {
    name     = var.gpt_models[count.index].sku_type
    capacity = var.gpt_models[count.index].quota
  }
}