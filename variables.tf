variable "network_management_connectivity_tests" {
  description = <<EOT
Map of network_management_connectivity_tests, attributes below
Required:
    - name
    - destination (block):
        - cloud_sql_instance (optional)
        - forwarding_rule (optional)
        - fqdn (optional)
        - gke_master_cluster (optional)
        - gke_pod (optional)
        - instance (optional)
        - ip_address (optional)
        - network (optional)
        - network_type (optional)
        - port (optional)
        - project_id (optional)
        - redis_cluster (optional)
        - redis_instance (optional)
    - source (block):
        - app_engine_version (optional, block):
            - uri (optional)
        - cloud_function (optional, block):
            - uri (optional)
        - cloud_run_revision (optional, block):
            - uri (optional)
        - cloud_sql_instance (optional)
        - gke_master_cluster (optional)
        - instance (optional)
        - ip_address (optional)
        - network (optional)
        - network_type (optional)
        - port (optional)
        - project_id (optional)
Optional:
    - bypass_firewall_checks
    - deletion_policy
    - description
    - labels
    - project
    - protocol
    - related_projects
    - round_trip
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                   = string
    bypass_firewall_checks = optional(bool)
    deletion_policy        = optional(string)
    description            = optional(string)
    labels                 = optional(map(string))
    project                = optional(string)
    protocol               = optional(string)
    related_projects       = optional(list(string))
    round_trip             = optional(bool)
    destination = object({
      cloud_sql_instance = optional(string)
      forwarding_rule    = optional(string)
      fqdn               = optional(string)
      gke_master_cluster = optional(string)
      gke_pod            = optional(string)
      instance           = optional(string)
      ip_address         = optional(string)
      network            = optional(string)
      network_type       = optional(string)
      port               = optional(number)
      project_id         = optional(string)
      redis_cluster      = optional(string)
      redis_instance     = optional(string)
    })
    source = object({
      app_engine_version = optional(object({
        uri = optional(string)
      }))
      cloud_function = optional(object({
        uri = optional(string)
      }))
      cloud_run_revision = optional(object({
        uri = optional(string)
      }))
      cloud_sql_instance = optional(string)
      gke_master_cluster = optional(string)
      instance           = optional(string)
      ip_address         = optional(string)
      network            = optional(string)
      network_type       = optional(string)
      port               = optional(number)
      project_id         = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

