resource "aws_s3_bucket" "default" {
  bucket = "${var.project}-bucket-${var.usage}"
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }
}

resource "aws_s3_bucket_public_access_block" "default" {
  bucket = aws_s3_bucket.default.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_policy" "ssl_only" {
  bucket = aws_s3_bucket.default.id

  policy = jsonencode({
    Version = "2008-10-17",
    "Statement" = [
      {
        Sid    = "AllowSSLRequestsOnly",
        Action = "s3:*",
        Effect = "Deny",
        Resource = [
          "arn:aws:s3:::${aws_s3_bucket.default.bucket}",
          "arn:aws:s3:::${aws_s3_bucket.default.bucket}/*"
        ],
        Condition = {
          Bool = {
            "aws:SecureTransport" = "false"
          }
        },
        Principal = "*"
      }
    ]
  })
}