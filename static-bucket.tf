variable "bucket_name" {
  type    = string
  default = "static-website-teachsys-22070901"
}

resource "alicloud_oss_bucket" "bucket-website" {
  bucket = var.bucket_name

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}
