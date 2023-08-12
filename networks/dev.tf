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

  vpc-cidr-block = var.vpc-cidr-block-dev

  vpc-endpoint-s3-enable = false
  create_private_natgw   = true

  public-subnet-cidr-block-dev  = var.public-subnet-cidr-block-dev
  private-subnet-cidr-block-dev = var.private-subnet-cidr-block-dev
  security-groups               = local.security-groups

  aws-region         = "ap-southeast-1"
  availability-zones = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]

  name        = var.name
  project     = var.project-name
  environment = "dev"

  tags = module.network_label_dev.tags
}