output "database_system_versions_lookup_id" {
  description = "Map of id values across all database_system_versions_lookup, keyed the same as var.database_system_versions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_system_versions.database_system_versions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_system_versions_lookup_compartment_id" {
  description = "Map of compartment_id values across all database_system_versions_lookup, keyed the same as var.database_system_versions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_database_system_versions.database_system_versions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_system_versions_lookup_filter" {
  description = "Map of filter values across all database_system_versions_lookup, keyed the same as var.database_system_versions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_system_versions.database_system_versions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_system_versions_lookup_gi_version" {
  description = "Map of gi_version values across all database_system_versions_lookup, keyed the same as var.database_system_versions_lookup except keys with no gi_version are omitted"
  value       = { for k, v in data.oci_database_system_versions.database_system_versions_lookup : k => v.gi_version if v.gi_version != null && length(v.gi_version) > 0 }
}
output "database_system_versions_lookup_is_latest" {
  description = "Map of is_latest values across all database_system_versions_lookup, keyed the same as var.database_system_versions_lookup except keys with no is_latest are omitted"
  value       = { for k, v in data.oci_database_system_versions.database_system_versions_lookup : k => v.is_latest if v.is_latest != null }
}
output "database_system_versions_lookup_resource_id" {
  description = "Map of resource_id values across all database_system_versions_lookup, keyed the same as var.database_system_versions_lookup except keys with no resource_id are omitted"
  value       = { for k, v in data.oci_database_system_versions.database_system_versions_lookup : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}
output "database_system_versions_lookup_shape" {
  description = "Map of shape values across all database_system_versions_lookup, keyed the same as var.database_system_versions_lookup except keys with no shape are omitted"
  value       = { for k, v in data.oci_database_system_versions.database_system_versions_lookup : k => v.shape if v.shape != null && length(v.shape) > 0 }
}
output "database_system_versions_lookup_system_version_collection" {
  description = "Map of system_version_collection values across all database_system_versions_lookup, keyed the same as var.database_system_versions_lookup except keys with no system_version_collection are omitted"
  value       = { for k, v in data.oci_database_system_versions.database_system_versions_lookup : k => v.system_version_collection if v.system_version_collection != null && length(v.system_version_collection) > 0 }
}

