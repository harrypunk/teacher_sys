output "db_zone" {
  value = data.alicloud_zones.zones.zones[0].id
}
