output "dev-vpc" {
  value = module.network_dev.vpc
}

output "dev-public-subnet" {
  value = module.network_dev.public-subnet
}

output "dev-route-table" {
  value = module.network_dev.route-table
}

output "security-groups-jenkins" {
  value = aws_security_group.jenkins
}

output "security-groups-ids" {
  value = module.network_dev.security-group-ids
}

output "security_group_ingress_rules_ids" {
  value = module.network_dev.security-group-rules-ingress-ids
}

output "dev-private-subnet-0" {
  value = module.network_dev.private-subnet-0
}

output "dev-private-subnet-1" {
  value = module.network_dev.private-subnet-1
}

output "dev-private-subnet-2" {
  value = module.network_dev.private-subnet-2
}

output "db-subnet-group" {
  value = module.network_dev.db-subnet-group
}