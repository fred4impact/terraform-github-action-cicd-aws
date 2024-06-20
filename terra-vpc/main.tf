#vpc module 
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_count = 2
  subnet_cidrs = var.subnet_cidrs
}

#security group module
module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
  vpc_cidr = var.vpc_cidr
}

#create Ec2 INSTANCE  
module "ec2" {
  source = "./modules/ec2"
  instance_type = var.instance_type
  sg_id = module.sg.sg_id
  subnets  = module.vpc.subnet_ids
  subnet_id = module.vpc.subnet_ids[0] # Replace [0] with the appropriate index if needed
}

#Application load balancer module
module "alb" {
  source = "./modules/alb"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_ids
  vpc_id = module.vpc.vpc_id
  ec2_ids = module.ec2.ec2_ids
}
