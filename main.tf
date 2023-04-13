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


resource "aws_ecr_repository" "demo_ecr" {
  name                 = var.aws_ecr_repository_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    Env  = "demo"
    Name = "demo_ecs_cluster"
  }
}