variable "resource_group_name" {
  type        = string
  description = "Name of resource group you want your cognitive service to reside in."
}

variable "openai_location" {
  type        = string
  description = "Location of the OpenAI cognitive service."
}

variable "cog_name" {
  type        = string
  description = "Name of your cognitive service."
}

variable "cog_kind" {
  type        = string
  description = "Type of your cognitive service."
}

variable "sku_name" {
  type        = string
  default     = "S0"
  description = "SKU version of your cognitive service."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Provide the tags you would like to have on the cognitive service."
}

variable "custom_subdomain_name" {
  type        = string
  default     = ""
  description = "The subdomain name used for token-based authentication. Changing this forces a new resource to be created."
}

/*
 * USE ONLY IF PRIVATE ENDPOINT IS REQUIRED
 *
variable "private_endpoint_name" {
  type        = string
  description = "Provide the name of the private endpoint."
}

variable "openai_private_endpoint_location" {
  type        = string
  description = "Location of the private endpoint for the OpenAI cognitive service."
}
*/

variable "subnet_id" {
  type        = string
  description = "Provide the id of the subnet."
}

################################################################################
# ChatGPT Model Deployment
################################################################################

variable "embedding_models" {
  description = "List of embedding models with their configurations. Each model should have name, version, quota, SKU type, and version upgrade option."
  type = list(object({
    name                   = string
    version                = string
    quota                  = string
    sku_type               = string
    version_upgrade_option = string
  }))
  default = []
}

variable "gpt_models" {
  description = "List of GPT models with their configurations. Each model should have name, version, sku_type, and version_upgrade."
  type = list(object({
    name                   = string
    version                = string
    quota                  = string
    sku_type               = string
    version_upgrade_option = string
  }))
  default = []
}

