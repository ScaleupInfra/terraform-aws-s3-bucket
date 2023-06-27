provider "aws" {
  access_key  = ""
  secret_key  = ""
  region      = "ap-northeast-1"
}

terraform {
  # required_version = ">= 1.0.0"  # Specify the desired Terraform version here
  required_providers {
    aws = ">= 3.0.0"  # Specify the desired AWS provider version here
  }
}