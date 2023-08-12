variable "aws-region" {
  description = "AWS region to launch servers."
  default     = "ap-southeast-1"
}

variable "create_private_natgw" {
  type    = bool
  default = true
}

variable "availability-zones" {
  type    = list(string)
  default = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

variable "security-groups" {
  type    = any
  default = {}
}

variable "vpc-endpoint-s3-enable" {}

variable "name" {}

variable "project" {}

variable "environment" {}

variable "tags" {}

variable "vpc-cidr-block" {}

variable "public-subnet-cidr-block-dev" {}
variable "private-subnet-cidr-block-dev" {}