variable "ami_id" {
  description = "The AMI ID to use for the instance."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet in which to launch the instance."
  type        = string
}

variable "ebs_volume_size" {
  description = "The size of the EBS volume to attach to the instance (in GB)."
  type        = number
}

variable "instance_name" {
  description = "The name of the instance."
  type        = string
}
