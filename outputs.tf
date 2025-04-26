output "vpc_id" {
  description = "The ID of the main VPC"
  value       = aws_vpc.main_vpc.id
}

output "public_subnet_1_id" {
  description = "The ID of the first public subnet in the VPC"
  value       = aws_subnet.public[0].id
}

output "public_subnet_2_id" {
  description = "The ID of the second public subnet in the VPC"
  value       = aws_subnet.public[1].id
}

output "private_subnet_1_id" {
  description = "The ID of the first private subnet in the VPC"
  value       = aws_subnet.private[0].id
}

output "private_subnet_2_id" {
  description = "The ID of the second private subnet in the VPC"
  value       = aws_subnet.private[1].id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the main VPC"
  value       = aws_vpc.main_vpc.cidr_block
}
