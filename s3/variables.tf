variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "bucket_acl" {
  description = "The ACL (Access Control List) for the S3 bucket."
  type        = string
  default     = "private"  # Default to private, but this can be overridden in tfvars.
}
