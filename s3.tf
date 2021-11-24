# lambda管理用バケット
resource "aws_s3_bucket" "lambda" {
  bucket = "gompei-lambda-management-bucket"
  acl    = "private"
}
