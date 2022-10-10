variable "app" {
  type        = string
  description = "The name of the application or project that the stack supports"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "The target environment for the stack - could be a tier or account level reference"
    sensitive = false
validation {
    condition     = contains(["dev", "qa", "stage", "prod", "demo", "perf", "nonprod", "prod"], var.env)
    error_message = "Must be one of the following: dev, qa, stage, prod, demo, perf,nonprod, prod"
  }
}

variable "program" {
  type        = string
  description = "The name of the program that the application or project belongs to"
  sensitive   = false
}

variable "glue_version" {
  type = string
  description = "The version of glue to use, for example '1.0'"
  sensitive = false
}

variable "max_retries" {
  type    = number
  description = "The maximum number of times to retry this job if it fails"
  default = 0
  sensitive = false
}

variable "worker_type" {
  type = string
  description = "value"
  sensitive = false
}

variable "number_of_workers" {
  type = number
  description = "value"
  sensitive = false
}

variable "timeout" {
  type    = number
  default = 10
  sensitive = false
}

variable "execution_class" {
  type    = string
  description = "The standard execution class is ideal for time-sensitive workloads that require fast job startup and dedicated resources. Valid value: FLEX, STANDARD"
  default = "FLEX"
  sensitive = false
}

variable "description" {
  type = string
  description = "Description of the job"
  sensitive = false
}

variable "role_arn" {
  type = string
  sensitive = false
}

variable "script_location" {
  type = string
  sensitive = false
}

variable "default_arguments" {
  type    = map(string)
  default = null
  sensitive = false
}