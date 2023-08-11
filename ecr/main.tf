module "ecr" {
  source      = "../modules/ecr"

  repos       = local.repos

  name        = var.name
  owner       = var.owner
  project     = var.project
  environment = var.environment
}
