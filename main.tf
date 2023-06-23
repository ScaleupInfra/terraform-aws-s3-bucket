module "s3" {
  source = "./s3-module"


  # the default values for the variables
  bucket_names = ["infrasity1", "infrasity2", "infrasity3"]
  sse_algorithm = "AES256"
  days = [30, 60, 365]
  storage_class = ["STANDARD_IA", "GLACIER"]
  Environment = "Production"
}
