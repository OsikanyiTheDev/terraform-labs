# 🚀 Terraform Labs: From Beginner to Cloud Engineer

## 📖 Overview

This repository documents my hands-on journey learning **Terraform** through progressively more advanced infrastructure projects on AWS. Each lab builds upon the previous one, moving from local Infrastructure as Code (IaC) concepts to deploying real cloud infrastructure using industry best practices.

The objective of this repository was not simply to learn Terraform syntax, but to develop the mindset and workflow of a Cloud Engineer by provisioning, managing, troubleshooting, and destroying cloud infrastructure entirely from the command line.

By the end of these labs, I progressed from creating local resources to deploying production-style AWS infrastructure with reusable modules, remote state management, custom networking, and compute resources.

---

# 🎯 Learning Objectives

Throughout these labs I learned how to:

- Write Infrastructure as Code using Terraform
- Manage infrastructure through the full lifecycle (Plan → Apply → Verify → Destroy)
- Build reusable Terraform modules
- Provision AWS cloud infrastructure
- Design custom VPC networking
- Deploy EC2 instances
- Configure secure Security Groups
- Manage Terraform state locally and remotely
- Secure Terraform state using Amazon S3
- Debug real-world infrastructure deployment issues
- Follow Infrastructure as Code best practices

---

# 🧪 Labs Completed

| Lab | Topic | Status |
|------|-------|--------|
| Lab 1 | Terraform Fundamentals | ✅ |
| Lab 2 | Variables & Outputs | ✅ |
| Lab 3 | Multiple Resources | ✅ |
| Lab 4 | State Management | ✅ |
| Lab 5 | Resource Dependencies | ✅ |
| Lab 6 | Terraform Modules | ✅ |
| Lab 7 | Deploying AWS EC2 | ✅ |
| Lab 8 | Custom AWS VPC & Networking | ✅ |
| Lab 9A | Bootstrap Remote State (Amazon S3) | ✅ |
| Lab 9B | Remote State Migration | ✅ |
| Lab 10 | EC2 Deployment, SSH & Web Server | ✅ |

---

# ☁️ AWS Services Used

Throughout these labs I worked with:

- Amazon EC2
- Amazon VPC
- Amazon S3
- Internet Gateway
- Route Tables
- Subnets
- Security Groups
- SSH Key Pairs

---

# 🛠️ Terraform Features Covered

- Providers
- Resources
- Variables
- Outputs
- Modules
- State Management
- Remote State
- Backend Configuration
- Resource Dependencies
- Input Variables
- Outputs
- Reusable Infrastructure
- Infrastructure Lifecycle

---

# 💻 Common Terraform Workflow

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

For infrastructure that forms part of future deployments (such as the remote state S3 backend), `terraform destroy` was intentionally omitted until it was no longer required.

---

# 🧠 Key Engineering Lessons

## Infrastructure as Code

Infrastructure should be reproducible, version controlled, and automated instead of manually configured through cloud consoles.

---

## Infrastructure Lifecycle

Every deployment should be able to be:

- Planned
- Created
- Verified
- Modified
- Destroyed

Clean destruction is just as important as successful deployment.

---

## Cloud Networking

I learned how AWS networking components interact:

- VPCs
- Public Subnets
- Internet Gateways
- Route Tables
- Security Groups

Understanding networking is foundational for every cloud engineer.

---

## Remote State

Terraform state should never remain solely on a local workstation.

Using an encrypted, versioned Amazon S3 backend enables:

- Team collaboration
- CI/CD integration
- Durable infrastructure state
- Disaster recovery through versioning

---

## Security

Security became part of every deployment through:

- SSH key authentication
- Security Groups
- Private infrastructure state
- Encrypted S3 storage
- Git hygiene (excluding sensitive files with `.gitignore`)

---

## Troubleshooting

These labs also involved solving real deployment issues, including:

- Invalid S3 bucket names
- SSH authentication failures
- Apache accessibility
- Security Group misconfigurations
- Route table associations
- Internet connectivity
- Terraform backend migration
- Resource deletion constraints
- Terraform state management

Troubleshooting these issues reinforced the importance of understanding cloud infrastructure rather than simply following tutorials.

---

# 📂 Repository Structure

```text
terraform-labs/
├── lab1-installation/
├── lab2-first-terraform-resource/
├── lab3-Variables/
├── lab4-locals-outputs/
├── lab5-terraform-state /
├── lab6-modules/
├── lab7-AWS-EC2-Deployment/
├── lab8-AWS-Networking-with-Terraform/
├── lab9
├── lab9-bootstrap/
├── lab9-remote-state/
├── lab10-ec2/
├── .gitignore
└── README.md
```

---

# 🎓 Outcome

Completing these labs provided practical experience in:

- Infrastructure as Code
- AWS Cloud Fundamentals
- Terraform Best Practices
- Cloud Networking
- Infrastructure Security
- Infrastructure Automation
- Infrastructure Troubleshooting

More importantly, these labs established the engineering habits required to build reliable and repeatable cloud infrastructure.

---

# 🚀 Next Project

This repository marks the completion of my Terraform learning journey.

The next stage is applying these skills to a production-inspired infrastructure project:

## **StartupHub Infrastructure**

A fully modular AWS infrastructure built with Terraform featuring:

- Multi-tier architecture
- Custom VPC
- Public & Private Subnets
- EC2 Application Servers
- Amazon S3 Static Website Hosting
- Application Load Balancer
- Route 53 DNS
- IAM Roles
- Remote State
- CI/CD Integration
- Dev and Production environments

This project focuses on applying Terraform in a realistic cloud engineering scenario, following production-inspired architecture and Infrastructure as Code best practices.

---

## 👨‍💻 Author

**Osikanyi Essandoh**

Cloud Engineering | DevOps | Infrastructure as Code | AWS | Terraform

*"Every lab was an opportunity to build, break, troubleshoot, and rebuild—developing the practical skills required to design and manage cloud infrastructure with confidence."*