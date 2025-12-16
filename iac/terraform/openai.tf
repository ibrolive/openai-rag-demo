module "openai" {
  source                           = "./openai"
  cog_name                         = "ai${var.project_name}openaiswe${var.environment}01"
  cog_kind                         = "OpenAI"
  resource_group_name              = azurerm_resource_group.rg.name
  custom_subdomain_name            = "ai${var.project_name}openaiswe${var.environment}01"
  openai_location                  = var.openai_location

  gpt_models                        = var.gpt_models
  embedding_models                  = var.embedding_models

  #private_endpoint_name            = "pep-${var.project_name}openai${var.region_abbreviation}${var.environment}01"
  #subnet_id                        = module.subnet_private_endpoints.subnet_id
  #openai_private_endpoint_location = azurerm_resource_group.rg.location

  tags = merge(local.tags, {
    # add custom tags here
  })
}

variable "openai_location" {
  type        = string
  description = "Azure region for the OpenAI resource"
}
