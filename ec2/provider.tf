provider "aws" {
  region  = "ap-southeast-1"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket         = "terraform-boostrap-hieptran-sd4871-0001"
    key            = "ec2.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-boostrap-hieptran-sd4871"
    profile        = "default"
    encrypt        = true
    kms_key_id     = "ffbe2228-da4a-46e6-ae71-0d132bc2adaa"
  }
}

data "terraform_remote_state" "bootstrap" {
  backend = "s3"
  config = {
    bucket  = "terraform-boostrap-hieptran-sd4871-0001"
    key     = "terraform.tfstate"
    profile = "default"
    region  = "ap-southeast-1"
  }
}

data "terraform_remote_state" "network" {
  backend   = "s3"

  config = {
    bucket  = "terraform-boostrap-hieptran-sd4871-0001"
    key     = "network.tfstate"
    profile = "default"
    region  = "ap-southeast-1"
  }
}

terraform {
  required_version = "~> 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }
}