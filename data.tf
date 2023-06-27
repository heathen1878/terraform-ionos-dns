data "ionosdeveloper_dns_zone" "zone_id" {
  for_each = var.dns_record

  name = each.value.zone_name

}