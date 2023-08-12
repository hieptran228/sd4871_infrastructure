module "eks" {
  source                          = "../modules/eks"
  cluster_name                    = local.cluster_name
  cluster_version                 = local.cluster_version
  vpc_id                          = local.vpc_id
  subnet_ids                      = local.subnet_ids
  cluster_endpoint_public_access  = local.cluster_endpoint_public_access
  eks_managed_node_group_defaults = local.eks_managed_node_group_defaults
  node_groups                     = local.node_groups

  name        = var.name
  owner       = var.owner
  project     = var.project
  environment = var.environment
}
