resource "aws_iam_user" "default" {
  name = "${var.usage}-user"
  path = "/"

  tags = {
    usage   = var.usage
    project = var.project
  }
}

resource "aws_iam_access_key" "default" {
  user = aws_iam_user.default.name
}

resource "aws_iam_user_policy" "default" {
  name = "s3_access"
  user = aws_iam_user.default.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid = "ConsoleAccess",
        Effect = "Allow",
        Action = [
          "s3:GetAccountPublicAccessBlock",
          "s3:GetBucketAcl",
          "s3:GetBucketLocation",
          "s3:GetBucketPolicyStatus",
          "s3:GetBucketPublicAccessBlock",
          "s3:ListAllMyBuckets"
        ],
        Resource = "*"
      },
      {
        Action = [
          "s3:ListBucket",
          "s3:*ObjectAcl",
          "s3:*Object"
        ],
        Effect = "Allow",
        Resource = [
          "arn:aws:s3:::${aws_s3_bucket.default.bucket}",
          "arn:aws:s3:::${aws_s3_bucket.default.bucket}/*"
        ],
      }
    ]
  })
}

resource "aws_secretsmanager_secret" "default" {
  name = "${var.usage}-user-secret"
}

resource "aws_secretsmanager_secret_version" "default" {
  secret_id     = aws_secretsmanager_secret.default.id
  secret_string = aws_iam_access_key.default.secret
}