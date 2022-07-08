output "db_zone" {
  value = alicloud_db_instance.base_db.zone_id
}

output "db_zone_slave_a" {
  value = alicloud_db_instance.base_db.zone_id_slave_a
}
