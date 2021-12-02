# lambda管理用バケット
resource "aws_s3_bucket" "lambda-us-east-1" {
  provider = aws.us-east-1
  bucket   = "gompei-lambda-management-bucket-us-east-1"
  acl      = "private"
}

resource "aws_s3_bucket_public_access_block" "lambda-us-east-1" {
  provider                = aws.us-east-1
  bucket                  = aws_s3_bucket.lambda-us-east-1.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "lambda-ap-northeast-1" {
  bucket = "gompei-lambda-management-bucket-ap-northeast-1"
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "lambda-ap-northeast-1" {
  bucket                  = aws_s3_bucket.lambda-ap-northeast-1.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
