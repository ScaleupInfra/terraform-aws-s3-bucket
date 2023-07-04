output "bucket_info" {
  value = {
    "bucket_names"    = var.bucket_names
    "sse_algorithm"   = var.sse_algorithm
    "days"            = var.days
    "storage_class"   = var.storage_class
    "Environment"     = var.Environment
  }
  description = "Map of bucket information"
}
