project_name        = "test"
region_abbreviation = "we"
environment         = "dev"
location            = "westeurope"
openai_location     = "swedencentral"

embedding_models = [
  {
    name                   = "text-embedding-3-large"
    version                = "1"
    quota                  = "75"
    sku_type               = "Standard"
    version_upgrade_option = "NoAutoUpgrade"
  },
  {
    name                   = "text-embedding-ada-002"
    version                = "2"
    quota                  = "75"
    sku_type               = "Standard"
    version_upgrade_option = "NoAutoUpgrade"
  }
]
gpt_models = [
  {
    name                   = "gpt-4o-mini"
    version                = "2024-07-18"
    quota                  = "300"
    sku_type               = "DataZoneStandard"
    version_upgrade_option = "NoAutoUpgrade"
  }
]