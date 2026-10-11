output "mlflow_experiments_id" {
  description = "Map of id values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no id are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mlflow_experiments_artifact_location" {
  description = "Map of artifact_location values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no artifact_location are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => v.artifact_location if v.artifact_location != null && length(v.artifact_location) > 0 }
}
output "mlflow_experiments_creation_time" {
  description = "Map of creation_time values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no creation_time are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => v.creation_time if v.creation_time != null }
}
output "mlflow_experiments_description" {
  description = "Map of description values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no description are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "mlflow_experiments_experiment_id" {
  description = "Map of experiment_id values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no experiment_id are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => v.experiment_id if v.experiment_id != null && length(v.experiment_id) > 0 }
}
output "mlflow_experiments_last_update_time" {
  description = "Map of last_update_time values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no last_update_time are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => v.last_update_time if v.last_update_time != null }
}
output "mlflow_experiments_lifecycle_stage" {
  description = "Map of lifecycle_stage values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no lifecycle_stage are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => v.lifecycle_stage if v.lifecycle_stage != null && length(v.lifecycle_stage) > 0 }
}
output "mlflow_experiments_name" {
  description = "Map of name values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no name are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mlflow_experiments_provider_config" {
  description = "Map of provider_config values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no provider_config are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "mlflow_experiments_tags" {
  description = "Map of tags values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no tags are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "mlflow_experiments_trace_location" {
  description = "Map of trace_location values across all mlflow_experiments, keyed the same as var.mlflow_experiments except keys with no trace_location are omitted"
  value       = { for k, v in databricks_mlflow_experiment.mlflow_experiments : k => one(v.trace_location) if v.trace_location != null && length(v.trace_location) > 0 }
}

