terraform {
  backend "s3" {
    bucket = "susmitha-avyaan-16"
    key    = "susmitha-avyaan-16/cake/terraform.tfstate"
    region = "us-east-1"
  }

}
