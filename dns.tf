resource "ionosdeveloper_dns_record" "dns_record" {
  for_each = var.dns_record

  zone_id = data.ionosdeveloper_dns_zone.zone_id[each.key].id
  name    = each.value.name
  type    = each.value.type
  content = each.value.content
  ttl     = each.value.ttl
}

locals {

  dns_record_output = {
    for key, value in ionosdeveloper_dns_record.dns_record : key => {
      id = value.id
    }
  }

}