# Terraform Lab 5 - Terraform State

## 🎯 Objective
Understand how Terraform state works and how Terraform tracks real infrastructure using the state file.

---

## 🧠 What I Learned

In this lab, I learned that Terraform uses a **state file** (`terraform.tfstate`) to keep track of all resources it creates.

The state file acts as Terraform’s “memory” and allows it to:
- Track existing infrastructure
- Detect changes between desired and actual state
- Prevent duplicate resource creation
- Enable updates and deletions safely

---

## 📦 What I Built

- A local file managed by Terraform
- A resource tracked through Terraform state
- Explored Terraform state commands

---

## 🧪 Files Created

- main.tf
- terraform.tfstate
- terraform.tfstate.backup
- state-file.txt

---

## ⚙️ Terraform Code Used

```hcl
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
