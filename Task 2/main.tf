module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "subnet" {
  source       = "./modules/subnet"
  vpc_id       = module.vpc.vpc_id
  subnet_cidr  = var.subnet_cidr
  az           = var.az
  subnet_name  = var.subnet_name
}

module "ec2" {
  source           = "./modules/ec2"
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  subnet_id        = module.subnet.subnet_id
  ebs_volume_size  = var.ebs_volume_size
  instance_name    = var.instance_name
}
