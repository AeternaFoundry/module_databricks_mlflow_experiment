resource "databricks_mlflow_experiment" "mlflow_experiments" {
  for_each = var.mlflow_experiments

  name              = each.value.name
  artifact_location = each.value.artifact_location
  creation_time     = each.value.creation_time
  description       = each.value.description
  experiment_id     = each.value.experiment_id
  last_update_time  = each.value.last_update_time
  lifecycle_stage   = each.value.lifecycle_stage

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "tags" {
    for_each = each.value.tags != null ? each.value.tags : []
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
    }
  }

  dynamic "trace_location" {
    for_each = each.value.trace_location != null ? [each.value.trace_location] : []
    content {
      dynamic "uc_trace_location" {
        for_each = trace_location.value.uc_trace_location != null ? [trace_location.value.uc_trace_location] : []
        content {
          catalog                = uc_trace_location.value.catalog
          effective_table_prefix = uc_trace_location.value.effective_table_prefix
          schema                 = uc_trace_location.value.schema
          table_prefix           = uc_trace_location.value.table_prefix
        }
      }
    }
  }
}

