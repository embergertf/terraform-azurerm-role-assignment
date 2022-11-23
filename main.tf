#
# Copyright 2022 Emmanuel Bergerat
#

# Created  on: Nov. 23rd, 2022
# Created  by: Emmanuel
# Modified on: 
# Modified by: 
# Overview:
#   This module:
#   - Creates an Azure Role Assignment for a principal on a scope

#----------------------------------
# - Assign role to Azure Resources
#----------------------------------
resource "azurerm_role_assignment" "this" {
  # Required
  principal_id                           = var.principal_id
  scope                                  = var.scope

  # Rule = id XOR name
  role_definition_id                     = var.role_definition_id
  role_definition_name                   = var.role_definition_name

  # Optional
  name                                   = var.name
  description                            = var.description
  skip_service_principal_aad_check       = var.skip_service_principal_aad_check
  delegated_managed_identity_resource_id = var.delegated_managed_identity_resource_id
  condition                              = var.condition
  condition_version                      = var.condition_version
}