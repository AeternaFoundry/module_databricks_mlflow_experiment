variable "mlflow_experiments" {
  description = <<EOT
Map of mlflow_experiments, attributes below
Required:
    - name
Optional:
    - artifact_location
    - creation_time
    - description
    - experiment_id
    - last_update_time
    - lifecycle_stage
    - provider_config (block):
        - workspace_id (optional)
    - tags (block):
        - key (optional)
        - value (optional)
    - timeouts (block):
    - trace_location (block):
        - uc_trace_location (optional, block):
            - catalog (required)
            - effective_table_prefix (optional)
            - schema (required)
            - table_prefix (optional)
EOT

  type = map(object({
    name              = string
    artifact_location = optional(string)
    creation_time     = optional(number)
    description       = optional(string)
    experiment_id     = optional(string)
    last_update_time  = optional(number)
    lifecycle_stage   = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    tags = optional(list(object({
      key   = optional(string)
      value = optional(string)
    })))
    timeouts = optional(object({
    }))
    trace_location = optional(object({
      uc_trace_location = optional(object({
        catalog                = string
        effective_table_prefix = optional(string)
        schema                 = string
        table_prefix           = optional(string)
      }))
    }))
  }))
}

