terraform {
  required_version = "1.4.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.59.0"
    }
  }
  backend "s3" {
    bucket = "tfstate-781588983111"
    key    = "dev/maquina-02/terraform.tfstate"
    region = "us-east-1"
    profile = "terraform"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}