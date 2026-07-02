variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "filename" {
  description = "Base file name"
  type        = string
  default     = "app"
}

variable "content" {
  description = "File content"
  type        = string
  default     = "Hello from Terraform Lab 4"
}
