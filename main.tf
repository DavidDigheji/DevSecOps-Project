provider "aws" {
    region = "eu-west-2"
}
resource "aws_s3_bucket" "terraformjuly" {
  bucket = "terraformjuly2024"
}

resource "aws_s3_bucket" "terraformjuly2026" {
  bucket = "terraformjuly2026"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket    = "terraformjuly2024"
    key       = "global/s3/terraform.tfstate"
    region    = "eu-west-2"

  }
}

