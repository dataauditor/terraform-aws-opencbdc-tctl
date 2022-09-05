
data "aws_route53_zone" "base_domain" {
  name = var.dns_base_domain
}

# ACM
resource "aws_acm_certificate" "domain_cert" {
  domain_name               = var.dns_base_domain
  subject_alternative_names = ["*.${var.dns_base_domain}"]
  validation_method         = "EMAIL"
}

