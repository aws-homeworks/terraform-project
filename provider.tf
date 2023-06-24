provider "aws" {
  region     = var.my-region
  # access_key = var.my-access-key
  # secret_key = var.my-secret-key
}

terraform {
  backend "s3" {
    bucket = "bucket-for-gh-terraform-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}