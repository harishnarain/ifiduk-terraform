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

output "function_app_name" {
  value       = azurerm_function_app.function_app.name
  description = "Deployed function app name"
}

output "function_app_default_hostname" {
  value       = azurerm_function_app.function_app.default_hostname
  description = "Deployed function app hostname"
}
