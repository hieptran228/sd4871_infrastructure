output "public_dns_jenkins" {
  value = aws_instance.default["jenkins"].public_dns
}

output "public_ip_jenkins" {
  value = aws_instance.default["jenkins"].public_ip
}

output "private_dns_jenkins" {
  value = aws_instance.default["jenkins"].private_dns
}

output "ec2_instances" {
  value = aws_instance.default
}

