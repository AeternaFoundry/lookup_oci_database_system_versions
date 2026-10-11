variable "database_system_versions_lookup" {
  description = <<EOT
Map of database_system_versions_lookup, attributes below
Required:
    - compartment_id
    - gi_version
Optional:
    - is_latest
    - resource_id
    - shape
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    gi_version     = string
    is_latest      = optional(bool)
    resource_id    = optional(string)
    shape          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

