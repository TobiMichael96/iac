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
        Action = [
          "s3:*"
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