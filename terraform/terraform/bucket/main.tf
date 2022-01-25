terraform {
  required_version = "1.0.11"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.67.0"
    }
  }

}


provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-bucket-gfttestkleberrausis" {
  bucket = "gfttestkleberrausis"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "TerraformGFT"
    Owner       = "Kleber Rausis"
    UpdatedAt   = "2021-11-30"
  }
}