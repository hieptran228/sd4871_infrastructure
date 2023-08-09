module "network_label_dev" {
  source = "../modules/tags"

  name        = var.name
  project     = var.project-name
  environment = "dev"
  owner       = var.owner

  tags = {
    Description = "Managed by Terraform",
  }
}

module "network_dev" {
  source = "../modules/network"

  vpc-cidr-block    = var.vpc-cidr-block-dev
  subnet-cidr-block = var.subnet-cidr-block-dev
  security-groups   = local.security-groups

  aws-region        = "ap-southeast-1"
  availability-zone = "ap-southeast-1a"

  name        = var.name
  project     = var.project-name
  environment = "dev"

  tags = module.network_label_dev.tags
}