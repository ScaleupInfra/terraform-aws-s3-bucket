locals {
  valid_bucket_name_regex = "^[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+$"
}

variable "bucket_names" {
  type = list(string)

  validation {
    condition     = length(var.bucket_names) == 1
    error_message = "Invalid bucket name(s). Bucket names must follow the format 'companyname-Teamname-env-module-purpose', e.g., 'autoscaleupinfra-Engineering-dev-s3-module'."
  }
}

variable "sse_algorithm" {
  type = string
}

variable "days" {
  type = list(number)
}

variable "storage_class" {
  type = list(string)
}

