variable "dns_record" {
  description = "A map of DNS records"
  type = map(object(
    {
      zone_name = string
      name      = string
      type      = string
      content   = string
      ttl       = number
    }
  ))
}