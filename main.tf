terraform {
  cloud {
    organization = "everyones-a-critic"
    workspaces {
      name = "ecr-repositories"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "communities-service" {
  name                 = "eac-communities-service"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}