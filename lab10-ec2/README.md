📘 Lab 10 — EC2 Instance Deployment with Terraform
🎯 Objective

Provision an AWS EC2 instance using Terraform, configure secure SSH access using a key pair, and deploy a basic web server (Apache) to demonstrate compute provisioning and network accessibility in AWS.

🏗️ What Was Built

This lab deploys a fully functional EC2 instance in AWS with:

Ubuntu Server (22.04 LTS)
Public IP address for internet access
SSH key-based authentication
Security Group allowing SSH (22) and HTTP (80)
Apache web server installed via manual configuration or user data
☁️ Architecture Overview
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
Security Group Rules
Inbound
SSH (22) → For remote terminal access
HTTP (80) → For web browser access
Outbound
All traffic allowed (0.0.0.0/0)
🔐 SSH Access
ssh -i lab10-key ubuntu@<public-ip>
🌐 Web Server Access

Once Apache is installed and running:

http://<public-ip>

Expected output:

Apache default Ubuntu web page OR custom HTML page
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

SSH (22) enables remote terminal access
HTTP (80) enables web access
3. Public vs Private Access
Public IP enables internet access
Private IP is only internal to VPC
4. Key Pair Authentication

SSH keys replace passwords for secure login into EC2 instances.

5. AWS Networking Flow
Internet → Security Group → EC2 Instance → Application (Apache)
⚠️ Common Issues Encountered
❌ “Permission denied (publickey)”
Wrong key file or missing .pem permission
❌ “ERR_CONNECTION_REFUSED”
Apache not running OR port 80 not open in Security Group
❌ No web access
Missing public IP or wrong subnet routing
🔑 Key Takeaway

Deploying an EC2 instance is not just about launching a server — it requires understanding the full stack:

Compute (EC2)
Networking (VPC, Subnets, Internet Gateway)
Security (Security Groups, SSH keys)
Application layer (Apache / web server)

This lab bridges the gap between infrastructure provisioning and real-world cloud hosting.
