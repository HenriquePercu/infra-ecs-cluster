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

resource "aws_ecs_cluster" "demo_ecs_cluster" {
  lifecycle {
    create_before_destroy = true
  }

  name = "demo_ecs_cluster"

  tags = {
    Env  = "demo"
    Name = "demo_ecs_cluster"
  }
}