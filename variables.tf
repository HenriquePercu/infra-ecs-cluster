variable "aws_ecr_repository_name" {
  type        = string
  description = "ECR repository name"
  default     = "demo_ecs_repository"
}

variable "ecs_task_execution_role_name" {
  type    = string
  default = "ecsTaskExecutionRole"
}