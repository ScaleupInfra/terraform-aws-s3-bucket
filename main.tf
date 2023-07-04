provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "ap-northeast-1" # Update with your desired region
}

module "s3" {
  source = "./s3-module"

  # the default values for the variables
  bucket_names  = ["autoscaleupinfra-engineering-dev-s3-module"]
  sse_algorithm = "AES256"
  days          = [30, 60, 365]
  storage_class = ["STANDARD_IA", "GLACIER"]
  Environment   = "Production"
}

