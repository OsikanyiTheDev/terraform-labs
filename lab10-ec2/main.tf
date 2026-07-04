terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

#----------------------------------------
#SECURITY GROUP
#----------------------------------------
resource "aws_security_group" "web_sg" {
  name        = "lab10-sg"
  description = "Allow SSH and HTTP"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All traffic outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#----------------------------------------
#SSH KEY PAIR
#----------------------------------------
resource "aws_key_pair" "lab10_key" {
  key_name   = "lab10-key"
  public_key = file("${path.module}/lab10-key.pub")
}

#----------------------------------------
#EC2 INSTANCEs
#----------------------------------------
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t3.micro"
  key_name        = aws_key_pair.lab10_key.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]


  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install apache2 -y
              systemctl start apache2
              systemctl enable apache2
              echo "<h1>Hello from Terraform EC2</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "lab10-WebServer"
  }
}

