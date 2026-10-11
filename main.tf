data "oci_database_system_versions" "database_system_versions_lookup" {
  for_each = var.database_system_versions_lookup

  compartment_id = each.value.compartment_id
  gi_version     = each.value.gi_version
  is_latest      = each.value.is_latest
  resource_id    = each.value.resource_id
  shape          = each.value.shape

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

