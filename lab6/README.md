# Terraform Lab 6 - Modules

## 🎯 Objective
Learn how to use Terraform modules to create reusable infrastructure components.

---

## 🧠 What I Learned
In this lab, I learned how Terraform modules allow us to break infrastructure into reusable components, making code cleaner, scalable, and maintainable.

---

## 📦 What I Built
- A reusable Terraform module (`file_creator`)
- A root module that calls multiple instances of the child module
- Two files generated using a single module

---

## 🏗️ Project Structure


lab6/
├── main.tf
├── modules/
│ └── file_creator/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf


---

## ⚙️ Terraform Code Overview

### Root Module (main.tf)
- Calls the `file_creator` module twice
- Passes different variables for each instance

### Child Module
- Creates a local file
- Accepts filename and content as inputs
- Outputs the created file name

---

## 🚀 Commands Used

```bash
terraform init
terraform plan
terraform apply
terraform destroy
```
