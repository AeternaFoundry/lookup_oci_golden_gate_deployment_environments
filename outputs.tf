output "golden_gate_deployment_environments_lookup_id" {
  description = "Map of id values across all golden_gate_deployment_environments_lookup, keyed the same as var.golden_gate_deployment_environments_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_environments.golden_gate_deployment_environments_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "golden_gate_deployment_environments_lookup_compartment_id" {
  description = "Map of compartment_id values across all golden_gate_deployment_environments_lookup, keyed the same as var.golden_gate_deployment_environments_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_environments.golden_gate_deployment_environments_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "golden_gate_deployment_environments_lookup_deployment_environment_collection" {
  description = "Map of deployment_environment_collection values across all golden_gate_deployment_environments_lookup, keyed the same as var.golden_gate_deployment_environments_lookup except keys with no deployment_environment_collection are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_environments.golden_gate_deployment_environments_lookup : k => v.deployment_environment_collection if v.deployment_environment_collection != null && length(v.deployment_environment_collection) > 0 }
}
output "golden_gate_deployment_environments_lookup_filter" {
  description = "Map of filter values across all golden_gate_deployment_environments_lookup, keyed the same as var.golden_gate_deployment_environments_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_environments.golden_gate_deployment_environments_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

