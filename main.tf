# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

# Configure Variables: myapp
variable "vpc_cidr_block"{}
variable "subnet_cidr_block"{}
variable "avail_zone"{}
variable "env_prefix"{}