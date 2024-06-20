variable "sg_id" {
    description = "The security group id for Application Load Balancer" 
    type = string
}

variable "subnets" {
    description = "The subnets for the Application Load Balancer"
    type = list(string)
  
}

variable "vpc_id" {
    description = "The VPC id for the Application Load Balancer"
    type = string
  
}

variable "ec2_ids" {
    description = "The ec2 instance ids for the Application Load Balancer"
    type = list(string)
  
}