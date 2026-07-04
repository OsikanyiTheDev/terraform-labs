variable "region" {
  default     = "us-east-1"
  description = "AWS region where resources are deployed"
  type        = string
}

variable "bucket_name" {
  description = "Globally unique s3 bucket name"
  type        = string
}