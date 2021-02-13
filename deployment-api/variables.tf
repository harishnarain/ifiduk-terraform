#------------------------------------------------------------------------------
#
# Terraform Configuration File Source Code
#
# NAME:
#    Input variables configuration file
#               - Get input for project name
#               - Get input for environment
#               - Get input for Azure region
#               - Get input for local user name
#           
#  
# VERSION: 1.0
#
#
#
# PREREQUISITES : Logged into Azure account with "az login" with proper
#                 subscription selected
#------------------------------------------------------------------------------

# Define project name.  Since this will be used for configuration such as the Storage account
# ensure the name is only alphanumeric.
variable "project" {
  type        = string
  description = "Project name"
}

# Define enviroment name such as PROD, QA, TEST, etc.
variable "environment" {
  type        = string
  description = "Environment (DEV, QA, or PROD)"
}

# Define Azure region.  Ensure the region supports the SKUs defined in the Terraform config files.
# By default if nothing is specified "West US 2" will be selected.
variable "location" {
  default = "West US 2"
}

# Define a prefix for all resources
variable "prefix" {
  default = "tmp-"
}

variable "azure_web_jobs_storage" {
  type = string
}

variable "service_bus_connection_string" {
  type = string
}

variable "mongodb_connection_string" {
  type = string
}
