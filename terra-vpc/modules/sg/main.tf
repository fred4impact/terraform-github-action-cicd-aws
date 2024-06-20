resource "aws_security_group" "sg" {
  name        = "a_sg"
  description = "Allow HTTP and SSH inbound traffic"
  vpc_id      = var.vpc_id


 ingress {
    description = "Allow port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]

}

ingress {
    description = "Allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

}


 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}


  tags = {
    Name = "TestSecurityGroup"
  }
}