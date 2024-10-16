terraform {
  backend "s3" {
    bucket = "harish-1998-oct"
    key    = "folder/terraform.tfstate"
    region = "us-east-1"
  }
}
