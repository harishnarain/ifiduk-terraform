#------------------------------------------------------------------------------
#
# Terraform Configuration File Source Code
#
# NAME:
#    Azure Resource Group configuration
#               - Setup Azure Resource Group
#           
#  
# VERSION: 1.0
#
#
#
# PREREQUISITES : Logged into Azure account with "az login" with proper
#                 subscription selected
#------------------------------------------------------------------------------

# The resource group name will be the project_name defined in variables.tf
resource "azurerm_resource_group" "resourcegroup" {
  name     = "${var.project_name}-cosmosdb"
  location = var.region

  tags = {
    environment = var.environment
    project     = var.project_name
  }
}
