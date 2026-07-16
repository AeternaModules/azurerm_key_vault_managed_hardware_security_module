output "key_vault_managed_hardware_security_modules_id" {
  description = "Map of id values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_vault_managed_hardware_security_modules_admin_object_ids" {
  description = "Map of admin_object_ids values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.admin_object_ids if v.admin_object_ids != null && length(v.admin_object_ids) > 0 }
}
output "key_vault_managed_hardware_security_modules_hsm_uri" {
  description = "Map of hsm_uri values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.hsm_uri if v.hsm_uri != null && length(v.hsm_uri) > 0 }
}
output "key_vault_managed_hardware_security_modules_location" {
  description = "Map of location values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.location if v.location != null && length(v.location) > 0 }
}
output "key_vault_managed_hardware_security_modules_name" {
  description = "Map of name values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "key_vault_managed_hardware_security_modules_network_acls" {
  description = "Map of network_acls values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.network_acls if v.network_acls != null && length(v.network_acls) > 0 }
}
output "key_vault_managed_hardware_security_modules_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "key_vault_managed_hardware_security_modules_purge_protection_enabled" {
  description = "Map of purge_protection_enabled values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.purge_protection_enabled if v.purge_protection_enabled != null }
}
output "key_vault_managed_hardware_security_modules_resource_group_name" {
  description = "Map of resource_group_name values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "key_vault_managed_hardware_security_modules_security_domain_encrypted_data" {
  description = "Map of security_domain_encrypted_data values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.security_domain_encrypted_data if v.security_domain_encrypted_data != null && length(v.security_domain_encrypted_data) > 0 }
  sensitive   = true
}
output "key_vault_managed_hardware_security_modules_security_domain_key_vault_certificate_ids" {
  description = "Map of security_domain_key_vault_certificate_ids values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.security_domain_key_vault_certificate_ids if v.security_domain_key_vault_certificate_ids != null && length(v.security_domain_key_vault_certificate_ids) > 0 }
}
output "key_vault_managed_hardware_security_modules_security_domain_quorum" {
  description = "Map of security_domain_quorum values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.security_domain_quorum if v.security_domain_quorum != null }
}
output "key_vault_managed_hardware_security_modules_sku_name" {
  description = "Map of sku_name values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "key_vault_managed_hardware_security_modules_soft_delete_retention_days" {
  description = "Map of soft_delete_retention_days values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.soft_delete_retention_days if v.soft_delete_retention_days != null }
}
output "key_vault_managed_hardware_security_modules_tags" {
  description = "Map of tags values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "key_vault_managed_hardware_security_modules_tenant_id" {
  description = "Map of tenant_id values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}

