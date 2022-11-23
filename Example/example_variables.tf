#
# Copyright 2022 Emmanuel Bergerat
#

#----------------------------------
#   Test Resource Group module variables
#----------------------------------
variable "name_override" { default = null }
variable "region_code" { default = null }
variable "subsc_code" { default = null }
variable "env" { default = null }
variable "base_name" { default = null }
variable "additional_name" { default = null }
variable "iterator" { default = null }
variable "owner" { default = null }
variable "add_random" { default = null }
variable "rnd_length" { default = null }
variable "additional_tags" {
  description = "(Optional) Additional base tags."
  type        = map(string)
  default     = null
}

#----------------------------------
# - Role assignment variables
#----------------------------------
variable "principal_id" {
  type = string
}
variable "role_name" {
  type = string
}
