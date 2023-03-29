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