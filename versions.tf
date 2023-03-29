terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "private-henrique-percu"

    workspaces {
      name = "github-actions"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}