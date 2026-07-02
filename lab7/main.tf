terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
    region = var.region
}

resource "aws_instance" "web" {
    ami = var.ami # Amazon linux 3 (us-east-1)
    instance_type = var.instance_type

    tags = {
        Name = "Terraform-EC2-Lab7"
    }
}