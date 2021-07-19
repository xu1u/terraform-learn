# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

# Configure Variables: myapp
variable "vpc_cidr_block"{}
variable "subnet_cidr_block"{}
variable "avail_zone"{}
variable "env_prefix"{}

# Create VPC: myapp
resource "aws_vpc" "myapp-vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "${var.env_prefix}-vpc"
  }
}