variable "db_name" {
  type    = string
  default = "t_dev"
}

variable "db_user" {
  type    = string
  default = "dev001"
}
variable "db_password" {
  type      = string
  sensitive = true
  default   = "app12345"
}

resource "alicloud_vpc" "db_vpc" {
  cidr_block = "172.16.0.0/16"
}

resource "alicloud_vswitch" "db_vsw" {
  vpc_id     = alicloud_vpc.db_vpc.id
  cidr_block = "172.16.0.0/24"
  zone_id    = data.alicloud_zones.zones.zones[0].id
}

resource "alicloud_db_instance" "base_db" {
  engine               = "MySQL"
  engine_version       = "8.0"
  instance_type        = data.alicloud_db_instance_classes.resources.instance_classes[0].instance_class
  instance_storage     = "30"
  instance_charge_type = "Postpaid"
  vswitch_id           = alicloud_vswitch.db_vsw.id
  monitoring_period    = "60"
}

resource "alicloud_rds_account" "base_db_account" {
  db_instance_id   = alicloud_db_instance.base_db.id
  account_name     = var.db_name
  account_password = var.db_password
}
