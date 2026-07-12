output "key_vault_managed_hardware_security_modules_id" {
  description = "Map of id values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.id }
}
output "key_vault_managed_hardware_security_modules_admin_object_ids" {
  description = "Map of admin_object_ids values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.admin_object_ids }
}
output "key_vault_managed_hardware_security_modules_hsm_uri" {
  description = "Map of hsm_uri values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.hsm_uri }
}
output "key_vault_managed_hardware_security_modules_location" {
  description = "Map of location values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.location }
}
output "key_vault_managed_hardware_security_modules_name" {
  description = "Map of name values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.name }
}
output "key_vault_managed_hardware_security_modules_network_acls" {
  description = "Map of network_acls values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.network_acls }
}
output "key_vault_managed_hardware_security_modules_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.public_network_access_enabled }
}
output "key_vault_managed_hardware_security_modules_purge_protection_enabled" {
  description = "Map of purge_protection_enabled values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.purge_protection_enabled }
}
output "key_vault_managed_hardware_security_modules_resource_group_name" {
  description = "Map of resource_group_name values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.resource_group_name }
}
output "key_vault_managed_hardware_security_modules_security_domain_encrypted_data" {
  description = "Map of security_domain_encrypted_data values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.security_domain_encrypted_data }
  sensitive   = true
}
output "key_vault_managed_hardware_security_modules_security_domain_key_vault_certificate_ids" {
  description = "Map of security_domain_key_vault_certificate_ids values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.security_domain_key_vault_certificate_ids }
}
output "key_vault_managed_hardware_security_modules_security_domain_quorum" {
  description = "Map of security_domain_quorum values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.security_domain_quorum }
}
output "key_vault_managed_hardware_security_modules_sku_name" {
  description = "Map of sku_name values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.sku_name }
}
output "key_vault_managed_hardware_security_modules_soft_delete_retention_days" {
  description = "Map of soft_delete_retention_days values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.soft_delete_retention_days }
}
output "key_vault_managed_hardware_security_modules_tags" {
  description = "Map of tags values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.tags }
}
output "key_vault_managed_hardware_security_modules_tenant_id" {
  description = "Map of tenant_id values across all key_vault_managed_hardware_security_modules, keyed the same as var.key_vault_managed_hardware_security_modules"
  value       = { for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : k => v.tenant_id }
}

