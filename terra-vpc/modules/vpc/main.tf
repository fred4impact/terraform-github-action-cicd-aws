# Create VPC
resource "aws_vpc" "Test_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "Test_vpc"
  }
}

#Create Subnets many  subnet 
resource "aws_subnet" "subnets" {
  count = var.subnet_count

  vpc_id            = aws_vpc.Test_vpc.id
  cidr_block        = element(var.subnet_cidrs, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index % length(data.aws_availability_zones.available.names))
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_names[count.index]
  }
}

#Create Internet gateway
resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.Test_vpc.id

  tags = {
    Name = "Test_vpc_IG"
  }
  
}

#Create Route Table
resource "aws_route_table" "test_route_table" {
  vpc_id = aws_vpc.Test_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
}

  tags = {
    Name = "Test_vpc_RT"
  }

}
#Create Route Table Association
resource "aws_route_table_association" "test_rta" {
  count          = length(var.subnet_cidrs)
  subnet_id      = aws_subnet.subnets[count.index].id
  route_table_id = aws_route_table.test_route_table.id
}

