terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = ">= 1.174"
    }
  }
}

provider "alicloud" {
  # cn-hongkong rds failed with invalid zone
  region = "cn-shenzhen"
}

