module "ec2-instances" {
  source = "../modules/ec2"
  name   = "ec2-instances"

  ec2_instances         = local.instances
  generate_ssh_key_pair = true
  owner                 = var.owner
  project               = var.project
  environment           = var.environment
}