terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "state_demo" {
  filename = "state-file.txt"
  content  = "This file is managed by Terraform state"
}
