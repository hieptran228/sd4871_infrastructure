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
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-bootstrap-hieptran-sd4871"
    profile        = "default"
    encrypt        = true
    kms_key_id     = "fa7732b1-6ddb-4d62-9208-bfc94e4db2d7"
  }
}
