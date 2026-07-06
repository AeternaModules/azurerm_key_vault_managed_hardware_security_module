output "key_vault_managed_hardware_security_modules" {
  description = "All key_vault_managed_hardware_security_module resources"
  value       = azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules
  sensitive   = true
}
output "key_vault_managed_hardware_security_modules_admin_object_ids" {
  description = "List of admin_object_ids values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.admin_object_ids]
}
output "key_vault_managed_hardware_security_modules_hsm_uri" {
  description = "List of hsm_uri values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.hsm_uri]
}
output "key_vault_managed_hardware_security_modules_location" {
  description = "List of location values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.location]
}
output "key_vault_managed_hardware_security_modules_name" {
  description = "List of name values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.name]
}
output "key_vault_managed_hardware_security_modules_network_acls" {
  description = "List of network_acls values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.network_acls]
}
output "key_vault_managed_hardware_security_modules_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.public_network_access_enabled]
}
output "key_vault_managed_hardware_security_modules_purge_protection_enabled" {
  description = "List of purge_protection_enabled values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.purge_protection_enabled]
}
output "key_vault_managed_hardware_security_modules_resource_group_name" {
  description = "List of resource_group_name values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.resource_group_name]
}
output "key_vault_managed_hardware_security_modules_security_domain_encrypted_data" {
  description = "List of security_domain_encrypted_data values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.security_domain_encrypted_data]
  sensitive   = true
}
output "key_vault_managed_hardware_security_modules_security_domain_key_vault_certificate_ids" {
  description = "List of security_domain_key_vault_certificate_ids values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.security_domain_key_vault_certificate_ids]
}
output "key_vault_managed_hardware_security_modules_security_domain_quorum" {
  description = "List of security_domain_quorum values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.security_domain_quorum]
}
output "key_vault_managed_hardware_security_modules_sku_name" {
  description = "List of sku_name values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.sku_name]
}
output "key_vault_managed_hardware_security_modules_soft_delete_retention_days" {
  description = "List of soft_delete_retention_days values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.soft_delete_retention_days]
}
output "key_vault_managed_hardware_security_modules_tags" {
  description = "List of tags values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.tags]
}
output "key_vault_managed_hardware_security_modules_tenant_id" {
  description = "List of tenant_id values across all key_vault_managed_hardware_security_modules"
  value       = [for k, v in azurerm_key_vault_managed_hardware_security_module.key_vault_managed_hardware_security_modules : v.tenant_id]
}

