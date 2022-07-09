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
