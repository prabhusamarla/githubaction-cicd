terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = var.aws_region # Use the region variable
}

module "ec2" {
  source                = "./ec2"
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  instance_count        = var.instance_count
  vpc_security_group_ids = var.vpc_security_group_ids
  key_pair_name          = var.key_pair_name
  root_volume_size       = var.root_volume_size # Pass root volume size
  extra_volume_size      = var.extra_volume_size # Pass additional volume size
  tag_name               = var.tag_name
  subnet_id              = var.subnet_id
  user_data              = file("./scripts/nginx.sh")   # Read the script file

}
