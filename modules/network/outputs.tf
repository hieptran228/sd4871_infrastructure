output "vpc" {
  value = aws_vpc.vpc
}

output "public-subnet" {
  value = aws_subnet.public
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