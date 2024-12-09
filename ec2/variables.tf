variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1" # Default to us-east-1
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "instance_count" {
  description = "Number of instances to launch"
  type        = number
  default     = 1
}

variable "vpc_security_group_ids" {
  description = "List of VPC security group IDs"
  type        = list(string)
}

variable "key_pair_name" {
  description = "Name of the key pair for SSH access"
  type        = string
}

variable "tag_name" {
  description = "Base name for tagging the instance"
  type        = string
}

variable "root_volume_size" {
  description = "Size of the root volume in GiB"
  type        = number
}

variable "extra_volume_size" {
  description = "Size of the additional volume in GiB"
  type        = number
}


variable "subnet_id" {
  description = "VPC Subnet ID to launch the resource"
  type        = string
}

variable "user_data" {
  description = "Userdata that will install webserver bashscript and display text."
  type        = string
}
