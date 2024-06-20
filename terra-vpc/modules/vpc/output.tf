output "vpc_id" {
  value = aws_vpc.Test_vpc.id
}

output "vpc_cidr_block" {
  value = aws_vpc.Test_vpc.cidr_block
}

output "subnet_ids" {
  value = aws_subnet.subnets.*.id
}

output "subnet_names" {
  value = aws_subnet.subnets[*].tags.Name
  
}
