#------------------------------------------------------------------------------
#
# Terraform Configuration File Source Code
#
# NAME:
#    Produce post deployment project configuration summary
#               - Outputs for required configuration parameters
#           
#  
# VERSION: 1.0
#
#
#
# PREREQUISITES : Logged into Azure account with "az login" with proper
#                 subscription selected
#------------------------------------------------------------------------------

# Output project name.  This was defined as input in variables.tf
output "project_name" {
  value = var.project_name
}

# Output environment.  This was defined as input in variables.tf
output "environment" {
  value = var.environment
}

# Output Azure region.  This was defined as input in variables.tf
output "region" {
  value = var.region
}

output "cosmos_db_account_id" {
  value = azurerm_cosmosdb_account.db.id
}

output "cosmos_db_account_name" {
  value = azurerm_cosmosdb_account.db.name
}

output "cosmos_db_account_connection_strings" {
  value = azurerm_cosmosdb_account.db.connection_strings
}

output "cosmos_db_mongo_database_name" {
  value = azurerm_cosmosdb_mongo_database.db.id
}

output "cosmos_db_organization_collection" {
  value = azurerm_cosmosdb_mongo_collection.organizations.id
}

output "cosmos_db_subscriptions_collection" {
  value = azurerm_cosmosdb_mongo_collection.subscriptions.id
}

output "cosmos_db_products_collection" {
  value = azurerm_cosmosdb_mongo_collection.products.id
}
