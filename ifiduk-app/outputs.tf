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

output "default_site_hostname" {
  value       = azurerm_app_service.app-service.default_site_hostname
  description = "Deployed app service hostname"
}
