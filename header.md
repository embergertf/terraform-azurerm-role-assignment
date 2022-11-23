# Role-assignment Module

## Overview

This terraform module assigns Roles onto Azure Resource (scope) for an Object. Azure Role-Based access Control (Azure RBAC) is the authorization system used to manage access to Azure resources.

To grant access, **roles** are assigned to **users, groups, service principals** at a particular **scope**.

## Notes

- This module requires the `object_id` of the `Service Principal/User/Group`.
- This module does not utilize the base module.
- This module assigns built-in `role` to `User/Service Principal/Group` for different `Azure Resource`. Please look in [documentation](https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles) for the available `built-in roles`.
- The Credentials used to create the role assignment (**Service Principal/User/Group**) needs to have **equivalent** or **more** permissions than the `User Access Administrator` role.
- **Only one** value between `role_definition_id` & `role_definition_name` must be provided. If `both` or `none` are provided, it returns an error.
- `condition` & `condition_version` attribute are in [preview](https://docs.microsoft.com/en-us/azure/role-based-access-control/conditions-role-assignments-portal#:~:text=An%20Azure%20role%20assignment%20condition,tag%20to%20read%20the%20object.).

## Example

```yaml
module "role-assignment" {
  # Terraform Cloud/Enterprise use
  source  = "app.terraform.io/embergertf/role-assignment/azurerm"
  version = "~>1.0.0"

  # Role Assignment
  principal_id         = var.principal_id
  role_definition_name = var.role_name
  scope                = module.resourcegroup.id
}
```
