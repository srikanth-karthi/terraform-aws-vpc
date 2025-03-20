output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "public_subnet_1_id" {
  value = aws_subnet.public[0].id
}

output "public_subnet_2_id" {
  value = aws_subnet.public[1].id
}

output "private_subnet_1_id" {
  value = aws_subnet.private[0].id
}

output "private_subnet_2_id" {
  value = aws_subnet.private[1].id
}

output "vpc_cidr_block" {
  value = aws_vpc.main_vpc.cidr_block
}
