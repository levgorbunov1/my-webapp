terraform {
  backend "s3" {
    acl            = "private"
    bucket         = "webapp-tf-state"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "eu-west-2"
  }
}

provider "aws" {
  region  = "eu-west-2"
}

