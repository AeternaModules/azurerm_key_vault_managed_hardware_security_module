variable "key_vault_managed_hardware_security_modules" {
  description = <<EOT
Map of key_vault_managed_hardware_security_modules, attributes below
Required:
    - admin_object_ids
    - location
    - name
    - resource_group_name
    - sku_name
    - tenant_id
Optional:
    - public_network_access_enabled
    - purge_protection_enabled
    - security_domain_key_vault_certificate_ids
    - security_domain_quorum
    - soft_delete_retention_days
    - tags
    - network_acls (block):
        - bypass (required)
        - default_action (required)
EOT

  type = map(object({
    admin_object_ids                          = set(string)
    location                                  = string
    name                                      = string
    resource_group_name                       = string
    sku_name                                  = string
    tenant_id                                 = string
    public_network_access_enabled             = optional(bool)
    purge_protection_enabled                  = optional(bool)
    security_domain_key_vault_certificate_ids = optional(list(string))
    security_domain_quorum                    = optional(number)
    soft_delete_retention_days                = optional(number)
    tags                                      = optional(map(string))
    network_acls = optional(object({
      bypass         = string
      default_action = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_hardware_security_modules : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_hardware_security_modules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_hardware_security_modules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_hardware_security_modules : (
        alltrue([for x in v.admin_object_ids : can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", x))])
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_hardware_security_modules : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.tenant_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_hardware_security_modules : (
        v.soft_delete_retention_days == null || (v.soft_delete_retention_days >= 7 && v.soft_delete_retention_days <= 90)
      )
    ])
    error_message = "must be between 7 and 90"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_hardware_security_modules : (
        v.security_domain_quorum == null || (v.security_domain_quorum >= 2 && v.security_domain_quorum <= 10)
      )
    ])
    error_message = "must be between 2 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_hardware_security_modules : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

