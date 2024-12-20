provider "aws" {
    region = "eu-west-2"
}
resource "aws_s3_bucket" "terraformjuly" {
  bucket = "terraformjuly2024"
}

resource "aws_s3_bucket" "terraformjuly2026" {
  bucket = "terraformjuly2026"
}

