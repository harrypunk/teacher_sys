data "alicloud_db_instance_classes" "resources" {
  zone_id              = data.alicloud_zones.zones.zones[0].id
  instance_charge_type = "PostPaid"
  engine               = "MySQL"
  engine_version       = "8.0"
  output_file          = "./db_classes.json"
}

data "alicloud_zones" "zones" {
  available_resource_creation = "Rds"
}


# output "first_db_instance_class" {
#   value = data.alicloud_db_instance_classes.resources.instance_classes
# }
