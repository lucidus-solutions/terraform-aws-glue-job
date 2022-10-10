variable "name" {
  type = string
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