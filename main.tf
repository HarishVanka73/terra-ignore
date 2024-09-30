provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "name-6969" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "vara"
  }
}
output "public-ip" {
  value = aws_instance.name-6969.public_ip

}
