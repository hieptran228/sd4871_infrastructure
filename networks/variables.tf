variable "aws-region" {
  description = "AWS region to launch servers."
  default     = "ap-southeast-1"
}

variable "create_private_natgw" {
  type    = bool
  default = false
}

variable "name" {}

variable "project-name" {}

variable "owner" {}

variable "vpc-cidr-block-dev" {}

variable "public-subnet-cidr-block-dev" {}
variable "private-subnet-cidr-block-dev" {}