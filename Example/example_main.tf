#
# Copyright 2022 Emmanuel Bergerat
#

#----------------------------------
#   Creating Resource Group
#----------------------------------
module "resourcegroup" {
  # Terraform Cloud/Enterprise use
  source  = "app.terraform.io/embergertf/resourcegroup/azurerm"
  version = "~>1.0.0"

  #name_override = var.name_override

  region_code     = var.region_code
  subsc_code      = var.subsc_code
  env             = var.env
  base_name       = var.base_name
  additional_name = var.additional_name
  iterator        = var.iterator

  owner      = var.owner
  add_random = var.add_random
  rnd_length = var.rnd_length
}

#----------------------------------
#   Assigning built-in roles to different Azure resources
#----------------------------------
module "role-assignment" {
  # Local use
  source = "../../terraform-azurerm-role-assignment"

  # # Terraform Cloud/Enterprise use
  # source  = "app.terraform.io/embergertf/role-assignment/azurerm"
  # version = "~>1.0.0"

  # Role Assignment
  principal_id         = var.principal_id
  role_definition_name = var.role_name
  scope                = module.resourcegroup.id
}
