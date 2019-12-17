variable "vpc_id" {
  description = "The ID of the VPC being used"
  type        = string
}

variable "instance_type" {
  type = string

}

variable "ssm_standard_role" {
  type = string

}

variable "subnet_ids" {
  description = "A list of Subnet IDs"
  type        = list
}

variable "allowed_ips" {
  type = list

}

variable "common_tags" {
  type        = map
  description = "Implements the common tags scheme"
}

variable "environment" {
  type        = string
  description = "The environment name"
}

variable "name" {
  type        = string
  description = "Name of the ec2 instance"
}

variable "asg" {
  description = "All the Settings of an Auto Scaling Group"
  default = {
    min_size = 1
    max_size = 1
    name     = "terraform-asg-bastion"
  }
}
