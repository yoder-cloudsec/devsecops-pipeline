terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "yoder-terraform-state-bucket"
    key = "devsecops-pipeline/terraform.tfstate"
    region = "eu-south-2"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "eu-south-2"
}