terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

module "file1" {
  source   = "./modules/file_creator"
  filename = "module-file1.txt"
  content  = "Hello from Module 1"
}

module "file2" {
  source   = "./modules/file_creator"
  filename = "module-file2.txt"
  content  = "Hello from Module 2"
}
