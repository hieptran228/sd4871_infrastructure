# Create an IAM policy
resource "aws_iam_policy" "jenkins_iam_policy" {
  name = "jenkins-${var.project}-policy"

  policy = data.aws_iam_policy_document.trust-policies-jenkins-system-manager.json
}

data "aws_iam_policy_document" "trust-policies-jenkins-system-manager" {
  statement {
    actions = [
      "secretsmanager:GetSecretValue",
      "ssm:GetParameter",
      "ssm:GetParameters",
      "ssm:GetParametersByPath"
    ]

    resources = ["*"]
  }
}

# Create an IAM role
resource "aws_iam_role" "jenkins_role" {
  name               = "jenkins-${var.project}-001"
  path               = "/"
  assume_role_policy = data.aws_iam_policy_document.trust-policies-jenkins-assume-role.json
}

data "aws_iam_policy_document" "trust-policies-jenkins-assume-role" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

# Attach the IAM policy to the IAM role
resource "aws_iam_policy_attachment" "jenkins_role_policy_attachment" {
  name       = "Policy Attachement"
  policy_arn = aws_iam_policy.jenkins_iam_policy.arn
  roles      = [aws_iam_role.jenkins_role.name]
}

# Create an IAM instance profile
resource "aws_iam_instance_profile" "jenkins_instance_profile" {
  name = "jenkins-instance-profile"
  role = aws_iam_role.jenkins_role.name
}