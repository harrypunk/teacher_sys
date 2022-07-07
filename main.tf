variable "db_name" {
  type    = string
  default = "t_dev"
}

data "alicloud_zones" "zones" {
  available_resource_creation = "Rds"
}

resource "alicloud_vpc" "db_vpc" {
  cidr_block = "172.16.0.0/16"
}

resource "alicloud_vswitch" "db_vsw" {
  vpc_id     = alicloud_vpc.db_vpc.id
  cidr_block = "172.16.0.0/24"
  zone_id    = data.alicloud_zones.zones.zones[0].id
}
