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