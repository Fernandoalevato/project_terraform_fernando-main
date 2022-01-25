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
  bucket = "terraform-fernando-teste1"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "TerraformGFT"
    Owner       = "Fernando Alevato"
    UpdatedAt   = "2022-01-25"
  }
}