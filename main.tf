
provider "aws" {
  version = "~> 2.17"
  region = var.region
}

resource "aws_s3_bucket" "default" {
  count         = var.create_s3_bucket ? 1 : 0

  bucket        = var.bucket_name
  acl           = "private"
  region        = var.region
  force_destroy = var.force_destroy

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = var.tags
}
