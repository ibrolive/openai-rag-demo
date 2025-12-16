variable "project_name" {
    type        = string
    description = "Short name for the project used in resource naming"
}

variable "region_abbreviation" {
    type        = string
    description = "Abbreviated region code used in resource naming (e.g., 'weu')"
}

variable "environment" {
    type        = string
    description = "Deployment environment identifier (e.g., 'dev', 'acc', 'prod')"
}

variable "location" {
    type        = string
    description = "Azure location for the resource group (e.g., 'westeurope')"
}


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