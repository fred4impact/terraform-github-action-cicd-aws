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

variable "availability_zone" {
  description = "The availability zone to use for the VPC"
  type        = string
  default     = "us-east-1a"
}

variable "subnet_names" {
  description = "List of names for the subnets"
  type        = list(string)
  default     = ["Public-subnet-1", "Public-subnet-2", "Private-subnet-3"]
}



