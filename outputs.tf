output "network_management_connectivity_tests_id" {
  description = "Map of id values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no id are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_management_connectivity_tests_bypass_firewall_checks" {
  description = "Map of bypass_firewall_checks values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no bypass_firewall_checks are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.bypass_firewall_checks if v.bypass_firewall_checks != null }
}
output "network_management_connectivity_tests_deletion_policy" {
  description = "Map of deletion_policy values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no deletion_policy are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "network_management_connectivity_tests_description" {
  description = "Map of description values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no description are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_management_connectivity_tests_destination" {
  description = "Map of destination values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no destination are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => one(v.destination) if v.destination != null && length(v.destination) > 0 }
}
output "network_management_connectivity_tests_effective_labels" {
  description = "Map of effective_labels values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no effective_labels are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "network_management_connectivity_tests_labels" {
  description = "Map of labels values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no labels are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "network_management_connectivity_tests_name" {
  description = "Map of name values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no name are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_management_connectivity_tests_project" {
  description = "Map of project values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no project are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.project if v.project != null && length(v.project) > 0 }
}
output "network_management_connectivity_tests_protocol" {
  description = "Map of protocol values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no protocol are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "network_management_connectivity_tests_related_projects" {
  description = "Map of related_projects values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no related_projects are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.related_projects if v.related_projects != null && length(v.related_projects) > 0 }
}
output "network_management_connectivity_tests_round_trip" {
  description = "Map of round_trip values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no round_trip are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.round_trip if v.round_trip != null }
}
output "network_management_connectivity_tests_source" {
  description = "Map of source values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no source are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => one(v.source) if v.source != null && length(v.source) > 0 }
}
output "network_management_connectivity_tests_terraform_labels" {
  description = "Map of terraform_labels values across all network_management_connectivity_tests, keyed the same as var.network_management_connectivity_tests except keys with no terraform_labels are omitted"
  value       = { for k, v in google_network_management_connectivity_test.network_management_connectivity_tests : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

