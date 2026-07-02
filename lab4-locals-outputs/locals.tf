locals {
  file_name = "${var.filename}-${var.environment}.txt"
  message   = "${var.content} | Environment: ${var.environment}"
}
