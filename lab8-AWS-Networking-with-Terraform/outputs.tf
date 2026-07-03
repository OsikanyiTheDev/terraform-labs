output "vpc_id" {
  description = "ID of the vpc"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "internet_gateway_id" {
  description = "ID of the internet Gateway"
  value       = aws_internet_gateway.igw.id
}