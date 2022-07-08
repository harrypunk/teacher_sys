terraform {
  backend "oss" {
    bucket              = "terraform-remote-backend-18f8cebf-fd8a-c721-1dca-dec880b029bd"
    prefix              = "teacher_sys"
    key                 = "ali_state"
    acl                 = "private"
    region              = "cn-hongkong"
    encrypt             = "false"
    tablestore_endpoint = "https://dev-ots01.cn-hongkong.ots.aliyuncs.com"
    tablestore_table    = "teacher_sys_lock"
  }
}
