variable "vpc_cidr" {     
  description = "CIDR block for Test VPC"
  type = string
  
}

variable "subnet_cidrs" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "subnet_count" {
  description = "Number of subnets"
  type = number
  default = 2            
}

variable "instance_type" {
  description = "The type of instance to start"
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key name to use for the instance"
  default     = "bflad-20180605"
  
}

variable "alb_name" {
  description = "The name of the Application Load Balancer"
  type        = string
  default     = "Application Load Balancer"
  
}
