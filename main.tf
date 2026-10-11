resource "google_network_management_connectivity_test" "network_management_connectivity_tests" {
  for_each = var.network_management_connectivity_tests

  name                   = each.value.name
  bypass_firewall_checks = each.value.bypass_firewall_checks
  deletion_policy        = each.value.deletion_policy
  description            = each.value.description
  labels                 = each.value.labels
  project                = each.value.project
  protocol               = each.value.protocol
  related_projects       = each.value.related_projects
  round_trip             = each.value.round_trip

  destination {
    cloud_sql_instance = each.value.destination.cloud_sql_instance
    forwarding_rule    = each.value.destination.forwarding_rule
    fqdn               = each.value.destination.fqdn
    gke_master_cluster = each.value.destination.gke_master_cluster
    gke_pod            = each.value.destination.gke_pod
    instance           = each.value.destination.instance
    ip_address         = each.value.destination.ip_address
    network            = each.value.destination.network
    network_type       = each.value.destination.network_type
    port               = each.value.destination.port
    project_id         = each.value.destination.project_id
    redis_cluster      = each.value.destination.redis_cluster
    redis_instance     = each.value.destination.redis_instance
  }

  source {
    dynamic "app_engine_version" {
      for_each = each.value.source.app_engine_version != null ? [each.value.source.app_engine_version] : []
      content {
        uri = app_engine_version.value.uri
      }
    }
    dynamic "cloud_function" {
      for_each = each.value.source.cloud_function != null ? [each.value.source.cloud_function] : []
      content {
        uri = cloud_function.value.uri
      }
    }
    dynamic "cloud_run_revision" {
      for_each = each.value.source.cloud_run_revision != null ? [each.value.source.cloud_run_revision] : []
      content {
        uri = cloud_run_revision.value.uri
      }
    }
    cloud_sql_instance = each.value.source.cloud_sql_instance
    gke_master_cluster = each.value.source.gke_master_cluster
    instance           = each.value.source.instance
    ip_address         = each.value.source.ip_address
    network            = each.value.source.network
    network_type       = each.value.source.network_type
    port               = each.value.source.port
    project_id         = each.value.source.project_id
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

