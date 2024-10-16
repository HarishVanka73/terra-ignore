provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "harish" {
  for_each      = var.ec2
  ami           = each.value.ami
  instance_type = var.instance_type
}

output "public-ip" {
  value = { for k, v in aws_instance.harish : k => v.public_ip }
}
