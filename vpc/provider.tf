# provider "aws" {
#   version = "~> 2.0"
#   region  = var.region
#   profile = var.profile
# }
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = "us-east-2"
}
