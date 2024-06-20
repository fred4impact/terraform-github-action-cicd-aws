
resource "aws_instance" "webServer" {
  count = length(var.ec2_names)

  ami                         = data.aws_ami.amazon-linux-2.id
  associate_public_ip_address = true
  instance_type               = var.instance_type
  availability_zone           = data.aws_availability_zones.available.names[count.index % length(data.aws_availability_zones.available.names)]
  # key_name                    = var.key_name
  vpc_security_group_ids      = [var.sg_id]
  subnet_id                   = var.subnets[count.index]
  
user_data = <<-EOF
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello, Webserver is live !</h1>" > /var/www/html/index.html
EOF



  tags = {
    Name = var.ec2_names[count.index]
  }
}

# resource "aws_eip" "webServer_eip" {
#   count = var.enable_eip ? length(var.ec2_names) : 0

#   instance = aws_instance.webServer[count.index].id
# }
 
