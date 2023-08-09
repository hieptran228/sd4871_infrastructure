variable "aws-region" {
  description = "AWS region to launch servers."
  default     = "ap-southeast-1"
}

variable "availability-zone" {
  type    = string
  default = "ap-southeast-1a"
}

variable "security-groups" {
  type    = any
  default = {}
}

variable "name" {}

variable "project" {}

variable "environment" {}

variable "tags" {}

variable "vpc-cidr-block" {}

variable "subnet-cidr-block" {}