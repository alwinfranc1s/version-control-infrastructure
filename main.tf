resource "aws_s3_bucket" "project_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "Learning"
    Project     = "Terraform-Version-Control"
  }
}

# Keep the bucket private by blocking public access.
resource "aws_s3_bucket_public_access_block" "project_bucket" {
  bucket = aws_s3_bucket.project_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
