resource "aws_route53_zone" "new_tera" {
  name = "newtera.com"
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.new_tera.zone_id
  name    = "www.newtera.com"
  type    = "A"
  ttl     = "300"
  records = ["3.90.215.141"]
}
