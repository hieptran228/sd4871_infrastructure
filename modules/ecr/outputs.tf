output "repo_urls" {
  value = { for key, value in aws_ecr_repository.this : key => value.repository_url }
}