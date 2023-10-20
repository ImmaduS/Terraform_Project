resource "aws_s3_bucket" "main" {
  bucket = var.s3_bucket_name
  acl    = "private"
}

# Configure cross-region replication for S3 buckets.

