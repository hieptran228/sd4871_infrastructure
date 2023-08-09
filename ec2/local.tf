locals {
  instances = {
    jenkins = {
      ami                           = "ami-0a481e6d13af82399"
      ami-owner                     = "137112412989" // Amazon is the owner
      instance-type                 = "t3a.medium"
      root-volume-size              = 20
      vpc-id                        = data.terraform_remote_state.network.outputs.dev-vpc.id
      security-group-ids            = data.terraform_remote_state.network.outputs.security-groups-jenkins.id
      create-default-security-group = true
      generate-ssh-key-pair         = true
      ssh-key-pair-path             = "../"
      associate_public_ip_address   = true
      subnet_id                     = data.terraform_remote_state.network.outputs.dev-public-subnet.id
      iam-instance-profile-name     = data.terraform_remote_state.bootstrap.outputs.jenkins_instance_profile
      iam-role-default-name         = data.terraform_remote_state.bootstrap.outputs.jenkins_role_name
    }
  }
}