variable "region" {
    default = "us-east-1"
    description = "The AWS region to deploy resources in."
}

variable "instance_type" {
    default = "t3.micro"
    description = "The type of instance to use for the EC2 instance."
}

variable "ami" {
    default = "ami-06067086cf86c58e6"
    description = "The Amazon Machine Image (AMI) ID to use for the EC2 instance."
}