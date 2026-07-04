terraform {
  backend "s3" {
    bucket = "osikanyithedev-terraform-state-2026"
    key    = "lab9/terraform.tfstate"
    region = "us-east-1"
  }
}