provider "aws" {
    region = "eu-west-2"
}
resource "aws_s3_bucket" "terraform-project2025" {
  bucket = "terraform-project-2025"
}

resource "aws_s3_bucket" "terraform-project2026" {
  bucket = "terraform-project-2026"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket    = "terraform-project-2025"
    key       = "global/s3/terraform.tfstate"
    region    = "eu-west-2"
  }
}
