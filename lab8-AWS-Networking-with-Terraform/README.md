# Terraform Lab 8 — AWS Networking (VPC)

## 🎯 Objective
Transition from isolated Terraform exercises into AWS Infrastructure Design by building a fully custom Virtual Private Cloud (VPC) network using Infrastructure as Code.

---

## 🏗️ Architecture Built

```
Internet
   │
   ▼
Internet Gateway
   │
   ▼
Route Table (0.0.0.0/0 → IGW)
   │
   ▼
Public Subnet (10.0.1.0/24)
   │
   ▼
VPC (10.0.0.0/16)
```

---

## ☁️ AWS Resources Created

| Resource Type | Terraform Resource | Configuration | Purpose |
|------|------|------|------|
| VPC | aws_vpc.main | 10.0.0.0/16 | Creates an isolated virtual network in AWS |
| Subnet | aws_subnet.public | 10.0.1.0/24 | Public subnet with auto public IP assignment |
| Internet Gateway | aws_internet_gateway.igw | Attached to VPC | Enables internet connectivity |
| Route Table | aws_route_table.public | 0.0.0.0/0 → IGW | Defines routing rules for outbound traffic |
| Route Table Association | aws_route_table_association.public | Subnet mapping | Links subnet to routing rules |

---

## 📁 Project Structure

- `main.tf` — AWS networking resources
- `variables.tf` — CIDR blocks and region configuration
- `outputs.tf` — Exported resource identifiers
- `README.md` — Documentation

---

## 📤 Outputs

```hcl
internet_gateway_id = "igw-056e1c7057d5999a0"
public_subnet_id    = "subnet-08d1bcf95817a3aef"
vpc_id              = "vpc-07065013d8d5a673e"
```

---

## ⚙️ Commands Used

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply -auto-approve
terraform output
terraform destroy -auto-approve
```

---

## 🧠 Key Concepts Learned

- Virtual Private Cloud (VPC) design
- Public subnet architecture
- Internet Gateway routing
- Route table configuration and association
- Infrastructure lifecycle management
- AWS networking fundamentals

---

## 🔑 Key Takeaway

Custom VPC design is the foundation of secure AWS architecture. Instead of relying on default networking, infrastructure should be explicitly defined, version-controlled, and reproducible using Terraform.

This ensures scalability, security, and production-grade reliability.