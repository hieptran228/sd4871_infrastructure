########### WORKSPACE KMS ###########
output "network_state_key_id" {
  value = aws_kms_key.network_state.key_id
}

output "network_state_alias_arn" {
  value = aws_kms_alias.network_state.arn
}

output "kms_bootstrap_id" {
  value = aws_kms_key.terraform-bootstrap.key_id
}

output "kms_bootstrap_alias_arn" {
  value = aws_kms_alias.terraform-bootstrap.arn
}

output "jenkins_instance_profile" {
  value = aws_iam_instance_profile.jenkins_instance_profile.name
}

output "jenkins_role_name" {
  value = aws_iam_role.jenkins_role.name
}