output "my_domain_zone" {
  value = aws_route53_zone.gom60
}

output "lambda_bucket_ap-northeast-1" {
  value = aws_s3_bucket.lambda-ap-northeast-1
}

output "lambda_bucket_us-east-1" {
  value = aws_s3_bucket.lambda-us-east-1
}
