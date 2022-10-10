resource "aws_glue_job" "this" {
  name              = "${local.stack}-glue-job"
  description       = var.description
  role_arn          = var.role_arn
  glue_version      = var.glue_version
  execution_class   = var.execution_class
  max_retries       = var.max_retries
  timeout           = var.timeout
  worker_type       = var.worker_type
  number_of_workers = var.number_of_workers
  default_arguments = var.default_arguments

  command {
    script_location = var.script_location
  }
  
}