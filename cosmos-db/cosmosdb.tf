#------------------------------------------------------------------------------
#
# Terraform Configuration File Source Code
#
# NAME:
#    Configuration for Cosmos DB instance
#           
#  
# VERSION: 1.0
#
#
#
# PREREQUISITES : Logged into Azure account with "az login" with proper
#                 subscription selected
#------------------------------------------------------------------------------


resource "azurerm_cosmosdb_account" "db" {
  name                = "${var.project_name}-cosmos-db"
  location            = azurerm_resource_group.resourcegroup.location
  resource_group_name = azurerm_resource_group.resourcegroup.name
  offer_type          = "Standard"
  kind                = "MongoDB"

  enable_automatic_failover = false

  enable_free_tier = true

  public_network_access_enabled = true

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 10
    max_staleness_prefix    = 200
  }

  geo_location {
    location          = azurerm_resource_group.resourcegroup.location
    failover_priority = 0
  }

  capabilities {
    name = "EnableAggregationPipeline"
  }

  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }

}

resource "azurerm_cosmosdb_mongo_database" "db" {
  name                = "ifidukDB"
  resource_group_name = azurerm_resource_group.resourcegroup.name
  account_name        = azurerm_cosmosdb_account.db.name
}

resource "azurerm_cosmosdb_mongo_collection" "organizations" {
  name                = "organizations"
  resource_group_name = azurerm_resource_group.resourcegroup.name
  account_name        = azurerm_cosmosdb_account.db.name
  database_name       = azurerm_cosmosdb_mongo_database.db.name

  default_ttl_seconds = "777"
  shard_key           = "uniqueKey"
  throughput          = 400
}

resource "azurerm_cosmosdb_mongo_collection" "subscriptions" {
  name                = "subscriptions"
  resource_group_name = azurerm_resource_group.resourcegroup.name
  account_name        = azurerm_cosmosdb_account.db.name
  database_name       = azurerm_cosmosdb_mongo_database.db.name

  default_ttl_seconds = "777"
  shard_key           = "uniqueKey"
  throughput          = 400
}

resource "azurerm_cosmosdb_mongo_collection" "products" {
  name                = "products"
  resource_group_name = azurerm_resource_group.resourcegroup.name
  account_name        = azurerm_cosmosdb_account.db.name
  database_name       = azurerm_cosmosdb_mongo_database.db.name

  default_ttl_seconds = "777"
  shard_key           = "uniqueKey"
  throughput          = 400
}
