provider "aws" {
  region = "us-east-1"
}


/*resource "aws_s3_bucket" "guru" {
  bucket = "bucketboybuddy-${count.index}"
  count  = 2


}*/

resource "aws_instance" "example" {
  for_each      = var.instances
  instance_type = each.value.instance_type
  ami           = each.value.ami
  #provider      = each.value.local.regional_providers.aws_region
  tags = {
    Name = "server-${each.key}"
  }

}

/*provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"

}

provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
}

/*locals {
  regional_providers = {
    "tanga-1" = aws.us-west-1
    "tanga-2" = aws.ap-south-1

  }
}
/*output "public-ip" {
  value = aws_instance.name-6969.public_ip

}*/
