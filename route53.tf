resource "aws_route53_zone" "gom60" {
  name = var.my_domain
}

resource "aws_route53_record" "cloudfront_alias" {
  zone_id = aws_route53_zone.gom60.zone_id
  name    = var.vpn_server_record
  type    = "A"
  ttl     = "300"
  records = [var.vpn_server_ip]
}
