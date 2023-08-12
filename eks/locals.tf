locals {
  cluster_name    = "${var.name}-${var.environment}"
  cluster_version = "1.27"

  vpc_id = data.terraform_remote_state.network.outputs.dev-vpc.id
  subnet_ids = [
    data.terraform_remote_state.network.outputs.dev-private-subnet-0.id,
    data.terraform_remote_state.network.outputs.dev-private-subnet-1.id,
    data.terraform_remote_state.network.outputs.dev-private-subnet-2.id
  ]
  cluster_endpoint_public_access = true

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"

  }

  node_groups = {
    one = {
      name = "node-group-1"

      instance_types = ["t3.small"]

      min_size     = 1
      max_size     = 3
      desired_size = 1
    }

    two = {
      name = "node-group-2"

      instance_types = ["t3.small"]

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}