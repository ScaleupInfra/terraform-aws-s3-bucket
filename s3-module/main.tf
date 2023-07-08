locals {
  tags = {
    "Created by" = "Tushar"
    "Env"        = "dev"
    "Company"    = "autostacelupinfra"
    "Automation" = "terraform"
  }
}

resource "aws_s3_bucket" "example_buckets" {
  count  = length(var.bucket_names)
  bucket = var.bucket_names[count.index]

  # Configure the bucket properties
  acl           = "private"
  force_destroy = true

  # Configure versioning
  versioning {
    enabled = true
  }

  # Configure server-side encryption
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
      }
    }
  }

  # Configure lifecycle rules
  lifecycle_rule {
    id      = "example_rule"
    enabled = true

    # Transition objects to STANDARD_IA after 30 days
    transition {
      days          = var.days[0]
      storage_class = var.storage_class[0]
    }

    # Transition objects to GLACIER after 60 days
    transition {
      days          = var.days[1]
      storage_class = var.storage_class[1]
    }

    # Expire objects after 365 days
    expiration {
      days = var.days[2]
    }
  }

  # Configure tags
  tags = merge(
    {
      "Name"        = "Example Bucket ${var.bucket_names[count.index]}"
      "Environment" = var.Environment
    },
    local.tags
  )
}