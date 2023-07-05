module "s3" {
  source = "./s3-module"

  # the default values for the variables
  bucket_names  = ["autoscaleupinfra-engineering-dev-s3-module"]
  sse_algorithm = "AES256"
  days          = [30, 60, 365]
  storage_class = ["STANDARD_IA", "GLACIER"]
}

