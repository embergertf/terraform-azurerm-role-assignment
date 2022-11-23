#
# Copyright 2022 Emmanuel Bergerat
#

#--------------------------------------------------------------
#   Test Resource Group module variables' values
#--------------------------------------------------------------
region_code = "ussc"
subsc_code   = "azint"
env          = "dev"
base_name    = "embergertf"
# additional_name = ""
iterator = "01"
additional_tags = {
  test_by = "emberger"
}

# Role Assignment
principal_id  = "4c44665e-4723-4fb7-ab05-df5748eb0615" # sp-emberger-tests /Enterprise Application Object ID
role_name     = "AcrDelete"
