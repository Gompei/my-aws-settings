resource "aws_route53_zone" "gom60" {
  name = var.my_domain
}

resource "aws_route53_record" "gcp" {
  zone_id = aws_route53_zone.gom60.id
  name    = "gcp.${var.my_domain}"
  type    = "NS"
  ttl     = 3600
  records = var.gcp_dns_ns_records
}
