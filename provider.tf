terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.58"
    }
  }

  backend "s3" {
  }
}

provider "aws" {
  region = "ap-northeast-1"
  alias  = "ap-northeast-1"

  default_tags {
    tags = {
      project = var.project_name
      Name    = var.project_name
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"

  default_tags {
    tags = {
      project = var.project_name
      Name    = var.project_name
    }
  }
}
