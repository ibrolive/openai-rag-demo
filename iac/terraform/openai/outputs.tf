output "cognitive_service_id" {
  description = "ID of cognitive service"
  value       = azurerm_cognitive_account.this.id
}

output "cognitive_service_endpoint" {
  description = "Endpoint of cognitive service"
  value       = azurerm_cognitive_account.this.endpoint
}

output "cognitive_service_primary_access_key" {
  description = "Primary access key of cognitive service"
  value       = azurerm_cognitive_account.this.primary_access_key
}

output "cognitive_service_secondary_access_key" {
  description = "Secondary access key of cognitive service"
  value       = azurerm_cognitive_account.this.secondary_access_key
}

output "principal_id" {
  description = "Principal ID of cognitive service"
  value       = azurerm_cognitive_account.this.identity[0].principal_id
}

output "embedding_model_names" {
  description = "List of deployed embedding models"
  value       = azurerm_cognitive_deployment.embedding[*].name
}
output "gpt_model_names" {
  description = "List of deployed ChatGPT models"
  value       = azurerm_cognitive_deployment.gpt_models[*].name
}