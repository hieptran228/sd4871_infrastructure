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
    bucket         = "terraform-boostrap-hieptran-sd4871-0001"
    key            = "network.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-network-hieptran-sd4871"
    profile        = "default"
    encrypt        = true
    kms_key_id     = "9337914e-eea9-4694-86df-c0afbab5f754"
  }
}
