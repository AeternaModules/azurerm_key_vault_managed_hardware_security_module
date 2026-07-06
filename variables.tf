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
    public_network_access_enabled             = optional(bool) # Default: true
    purge_protection_enabled                  = optional(bool)
    security_domain_key_vault_certificate_ids = optional(list(string))
    security_domain_quorum                    = optional(number)
    soft_delete_retention_days                = optional(number) # Default: 90
    tags                                      = optional(map(string))
    network_acls = optional(object({
      bypass         = string
      default_action = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_hardware_security_modules : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.admin_object_ids))
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
  # --- Unconfirmed validation candidates, derived from azurerm_key_vault_managed_hardware_security_module's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from managedHSMValidation.ManagedHardwareSecurityModuleName] !ok
  # path: name
  #   source:    [from managedHSMValidation.ManagedHardwareSecurityModuleName] strings.Contains(v, "--") || !regexp.MustCompile(`^[a-zA-Z][-a-zA-Z\d]{1,22}[a-zA-Z\d]$`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: sku_name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_acls.default_action
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_acls.bypass
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: security_domain_key_vault_certificate_ids[*]
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: security_domain_key_vault_certificate_ids[*]
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

