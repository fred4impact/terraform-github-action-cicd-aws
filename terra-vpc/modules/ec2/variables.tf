variable "instance_type" {
  description = "The type of instance to start"
  default     = "t2.micro"
}

# variable "key_name" {
#   description = "The key name to use for the instance"
#   default     = "public_key"
  
# }

# variable "enable_eip" {
#   description = "Enable Elastic IP allocation for EC2 instances"
#   type        = bool
#   default     = true
# }

variable "sg_id" {
  description = "The security group ID to use for the instance"
  type = string
}

variable "subnet_id" {
    description = "The subnet ID fro ec2 to start the instance in" 
    type = string
}

variable "subnets" {
  description = "The subnets to start the instance in"
  type = list(string)
  
}

variable "ec2_names" {
  description = "EC2 instance names"
  type = list(string)
  default = [ "Webserver1", "Webserver2" ]
  
}

