# 📘 Lab 10 — EC2 Instance Deployment with Terraform

## 🎯 Objective
Provision an AWS EC2 instance using Terraform, configure secure SSH access using a key pair, and deploy a basic web server (Apache) to demonstrate compute provisioning and network accessibility in AWS.

---

## 🏗️ What Was Built
This lab deploys a fully functional EC2 instance in AWS with:

- Ubuntu Server 22.04 LTS
- Public IP address for internet access
- SSH key-based authentication
- Security Group allowing SSH (22) and HTTP (80)
- Apache web server installed manually or via user data

---

## ☁️ Architecture Overview

```text
Internet
   │
   ▼
Security Group (Firewall Rules)
   │   ├── SSH (22)
   │   └── HTTP (80)
   ▼
EC2 Instance (Ubuntu 22.04)
   │
   ├── Apache Web Server
   └── Public IPv4 Address
📁 Project Structure
lab10-ec2/
├── main.tf          # EC2 instance definition
├── variables.tf     # Input variables (AMI, region, key pair)
├── outputs.tf       # Public IP and DNS output
├── key-pair.tf      # SSH key pair configuration (if created via Terraform)
├── user-data.sh     # (Optional) Apache installation script
└── README.md        # Project documentation
⚙️ Terraform Configuration Summary
EC2 Instance
Amazon Machine Image (AMI): Ubuntu Server 22.04 LTS
Instance Type: t2.micro (Free Tier eligible)
Public IP: Enabled
🔐 Security Group Rules
Inbound
SSH (22) → Remote terminal access
HTTP (80) → Web browser access
Outbound
All traffic allowed (0.0.0.0/0)
🔑 SSH Access
ssh -i lab10-key ubuntu@<public-ip>
🌐 Web Server Access

Once Apache is installed and running:

http://<public-ip>

Expected result:

Apache2 Ubuntu Default Page OR custom HTML page
💻 Commands Used
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
🧠 Key Concepts Learned
1. EC2 Provisioning

AWS EC2 provides scalable virtual machines that can be deployed using Infrastructure as Code (Terraform).

2. Security Groups

Security Groups act as virtual firewalls controlling inbound and outbound traffic:

SSH (22) → secure remote login
HTTP (80) → web traffic access
3. Public vs Private IP
Public IP → allows internet access
Private IP → internal VPC communication only
4. Key Pair Authentication

SSH keys are used instead of passwords for secure access to EC2 instances.

5. AWS Network Flow
Internet → Security Group → EC2 Instance → Apache Web Server
⚠️ Common Issues Encountered
❌ Permission denied (publickey)
Incorrect key file
Wrong permissions on .pem
❌ ERR_CONNECTION_REFUSED
Apache not running
Port 80 not open in Security Group
❌ No browser access
Missing public IP
Incorrect subnet routing to Internet Gateway
🔑 Key Takeaway

EC2 deployment is not just launching a server — it requires understanding:

Compute (EC2)
Networking (VPC, Subnets, IGW)
Security (Security Groups, SSH keys)
Application layer (Apache / web hosting)

This lab bridges infrastructure provisioning and real-world cloud hosting.