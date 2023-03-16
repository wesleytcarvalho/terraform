terraform {
  required_version = ">= 0.12"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.58.0"
    }
    random = {
        source = "hashicorp/random"
        version = "3.4.3"
    }
  }
  
}
