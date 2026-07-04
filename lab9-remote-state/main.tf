terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "demo" {
  filename = "remote-state-test.txt"
  content  = "Terraform is now using remote state!"
}