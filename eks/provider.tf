provider "aws" {
  region  = "ap-southeast-1"
  profile = "default"
}

terraform {
  required_version = "~> 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-bootstrap-hieptran-sd4871-0001"
    key            = "eks.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-bootstrap-hieptran-sd4871"
    profile        = "default"
    encrypt        = true
    kms_key_id     = "5924a684-a671-4997-9218-83a1285b1d5e"
  }
}

data "terraform_remote_state" "bootstrap" {
  backend = "s3"
  config = {
    bucket  = "terraform-bootstrap-hieptran-sd4871-0001"
    key     = "terraform.tfstate"
    profile = "default"
    region  = "ap-southeast-1"
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket  = "terraform-bootstrap-hieptran-sd4871-0001"
    key     = "network.tfstate"
    profile = "default"
    region  = "ap-southeast-1"
  }
}