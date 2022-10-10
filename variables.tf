variable "app" {
  type        = string
  description = "The name of the application or project that the stack supports"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "The target environment for the stack - could be a tier or account level reference"
  sensitive   = false
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
  type        = string
  description = "The version of glue to use, for example '1.0'"
  default     = "3.0"
  sensitive   = false
}

variable "max_retries" {
  type        = number
  description = "The maximum number of times to retry this job if it fails"
  default     = 0
  sensitive   = false
}

variable "worker_type" {
  type        = string
  description = "The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X"
  sensitive   = false
}

variable "number_of_workers" {
  type        = number
  description = "The number of workers of a defined workerType that are allocated when a job runs"
  default     = 1
  sensitive   = false
}

variable "timeout" {
  type        = number
  description = "The number of minutes before the job times-out"
  default     = 10
  sensitive   = false
}

variable "execution_class" {
  type        = string
  description = "The standard execution class is ideal for time-sensitive workloads that require fast job startup and dedicated resources. Valid value: FLEX, STANDARD"
  default     = "FLEX"
  sensitive   = false
}

variable "description" {
  type        = string
  description = "Description of the job"
  sensitive   = false
}

variable "role_arn" {
  type        = string
  description = "The role that the job assumes"
  sensitive   = false
}

variable "script_location" {
  type        = string
  description = "The s3 path where the job script is stored"
  sensitive   = false
}

variable "default_arguments" {
  type        = map(string)
  description = "The map of default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes"
  default     = null
  sensitive   = false
}