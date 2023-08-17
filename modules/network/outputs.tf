output "vpc" {
  value = aws_vpc.vpc
}

output "public-subnet" {
  value = aws_subnet.public
}

output "private-subnet-0" {
  value = aws_subnet.private[0]
}

output "private-subnet-1" {
  value = aws_subnet.private[1]
}

output "private-subnet-2" {
  value = aws_subnet.private[2]
}

output "route-table" {
  value = aws_route_table.public-crt.id
}

output "security-group-ids" {
  #value = aws_security_group.this # show all attributes
  value = { for k, v in aws_security_group.this : k => v.id }
}

output "security-group-rules-ingress-ids" {
  #value = aws_vpc_security_group_ingress_rule.this
  value = { for k, v in aws_vpc_security_group_ingress_rule.this : k => v.id }
}

output "db-subnet-group" {
  value = aws_db_subnet_group.private-db-subnet
}