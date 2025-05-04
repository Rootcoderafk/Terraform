variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
}

variable "az" {
  description = "The availability zone for the subnet."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create."
  type        = string
}

variable "ebs_volume_size" {
  description = "The size of the EBS volume attached to the EC2 instance (in GB)."
  type        = number
}

variable "instance_name" {
  description = "The name of the EC2 instance."
  type        = string
}
