data "oci_golden_gate_deployment_environments" "golden_gate_deployment_environments_lookup" {
  for_each = var.golden_gate_deployment_environments_lookup

  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

