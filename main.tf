# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# CIDR cidr_block
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
