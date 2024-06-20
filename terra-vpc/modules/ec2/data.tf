data "aws_ami" "amazon-linux-2" {
 most_recent = true


 filter {
   name   = "owner-alias"
   values = ["amazon"]
 }


 filter {
   name   = "virtualization-type"
    values = ["hvm"]
 }
owners = ["amazon"] # Canonical

}

data "aws_availability_zones" "available" {}
