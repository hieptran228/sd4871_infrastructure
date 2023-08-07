provider "aws" {
  region  = "ap-southeast-1"
  profile = "default"
}

terraform {
  required_version = "~> 1.3.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-boostrap-hieptran-sd4871-0001"
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-boostrap-hieptran-sd4871"
    profile        = "default"
    encrypt        = true
    kms_key_id     = "479d3649-f71b-4332-a4f9-354fcd45814d"
  }
}
