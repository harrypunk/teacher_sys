module "db" {
  source = "./db"
  count = var.enable_rds ? 1 : 0
}
