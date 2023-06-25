provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "akp-terraform-state"
    key = "api"
    region = "us-east-1"
  }
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
