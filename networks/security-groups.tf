resource "aws_security_group" "jenkins" {
  name        = "jenkins"
  description = "Allow jenkins traffic"
  vpc_id      = module.network_dev.vpc.id
  ingress {
    description = "allow ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "allow incoming 8080"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "allow access internet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    module.network_label_dev.tags,
    {
      Name = "jenkins-${var.project-name}-${var.name}-dev"
    }
  )
}