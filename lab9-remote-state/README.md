# Lab 9B — Remote State Migration (S3 Backend)

## 🎯 Objective

Migrate Terraform from local state management (`terraform.tfstate` stored on a local machine) to a centralized AWS S3 remote backend. This enables durable, shared, and production-grade infrastructure state management.

This lab completes the transition from isolated Terraform usage to a collaborative cloud engineering workflow.

---

## 🏗️ What Was Built & Migrated

We configured an AWS S3 backend and deployed a test resource (`local_file.demo`) to validate that Terraform state is now stored remotely instead of locally.

```text
Before Lab 9B                           After Lab 9B

Local Machine                           Terraform CLI / CI/CD
┌───────────────────────┐              ┌────────────────────────────┐
│ main.tf               │              │ main.tf                    │
│ terraform.tfstate ❌   │              │ backend.tf (S3 backend)    │
└───────────────────────┘              └──────────────┬─────────────┘
                                                     │
                                                     ▼
                                           AWS S3 Remote Backend
                                   ┌──────────────────────────────┐
                                   │ terraform-state bucket       │
                                   │ └── lab9/terraform.tfstate   │
                                   │ (encrypted + versioned)      │
                                   └──────────────────────────────┘
```

---

## ☁️ Backend Configuration (`backend.tf`)

```hcl
terraform {
  backend "s3" {
    bucket = "osikanyithedev-terraform-state-2026"
    key    = "lab9/terraform.tfstate"
    region = "us-east-1"
  }
}
```

### Explanation

- **bucket** → S3 bucket used for remote state storage  
- **key** → path inside the bucket where state is stored  
- **region** → AWS region hosting the backend infrastructure  

---

## ⚙️ Project Structure

```text
lab9-remote-state/
├── main.tf
├── backend.tf
├── outputs.tf
├── remote-state-test.txt
└── README.md
```

---

## 📌 Verification

### 1. Local workspace check

```bash
ls -a
```

Result:
- No `terraform.tfstate` file exists locally
- Only `.terraform/` and `.terraform.lock.hcl` remain

> ✅ This confirms state is no longer stored on the local machine.

---

### 2. Remote state confirmation

```bash
terraform state list
```

Output:
```
local_file.demo
```

This confirms Terraform is successfully reading state from the S3 backend.

---

## 💻 Commands Used

```bash
terraform init     # Initialize backend and migrate state
terraform plan     # Preview infrastructure changes
terraform apply    # Deploy infrastructure and update remote state
terraform state list  # Verify state is managed remotely
```

---

## 🧠 Key Concepts Learned

### 1. Remote State Management
Terraform state is now centralized in AWS S3 instead of being stored locally, improving reliability and collaboration.

---

### 2. State Migration
Terraform automatically migrates existing local state into the S3 backend when `terraform init` is run after backend configuration.

---

### 3. Backend Initialization Order
The backend is initialized before variables, providers, and resources. This is why backend configuration must be static and cannot depend on input variables.

---

### 4. Team Collaboration & CI/CD
Remote state enables multiple engineers and CI/CD pipelines to safely work on the same infrastructure without overwriting state.

---

## 🔑 Key Takeaway

Terraform state is now managed centrally in AWS S3. This eliminates local state dependency and enables a scalable, team-ready, and production-grade Infrastructure as Code workflow.