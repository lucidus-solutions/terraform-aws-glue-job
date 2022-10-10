variable "app" {
  type        = string
  description = "The name of the application or project that the stack supports"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "The target environment for the stack - could be a tier or account level reference"
  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "demo", "perf", "nonprod", "prod"], var.env)
    error_message = "Must be one of the following: dev, qa, stage, prod, demo, perf,nonprod, prod"
  }
  sensitive = false
}

variable "program" {
  type        = string
  description = "The name of the program that the application or project belongs to"
  sensitive   = false
}

variable "glue_version" {
  type = string
}

variable "max_retries" {
  type    = number
  default = 0
}

variable "worker_type" {
  type = string
}

variable "number_of_workers" {
  type = number
}

variable "timeout" {
  type    = number
  default = 10
}

variable "execution_class" {
  type    = string
  default = "FLEX"
}

variable "description" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "script_location" {
  type = string
}

variable "default_arguments" {
  type    = map(string)
  default = null
}