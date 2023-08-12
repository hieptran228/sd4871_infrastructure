
variable "name" {
  type    = string
  default = ""
}

variable "project" {
  type    = string
  default = ""
}

variable "environment" {
  type    = string
  default = ""
}

variable "owner" {
  type    = string
  default = ""
}

variable "cluster_name" {
  type    = string
  default = "eks"
}

variable "cluster_version" {
  type    = string
  default = "1.27"
}

variable "vpc_id" {}

variable "subnet_ids" {}

variable "cluster_endpoint_public_access" {}

variable "eks_managed_node_group_defaults" {}

variable "node_groups" {}