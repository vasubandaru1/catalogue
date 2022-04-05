module "catalogue" {
  source = "git::https://github.com/vasubandaru1/terraform-mutable.git//app-module"
  INSTANCE_TYPE = var.INSTANCE_TYPE
  ENV   = var.ENV
  OD_INSTANCE_COUNT = var.OD_INSTANCE_COUNT
  SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
  COMPONENT           = "catalogue"
  PORT                = 8080
  IS_PRIVATE_LB        = true
  LB_RULE_PRIORITY     = 101

}

output "INSTANCE_IDS" {
  value = module.catalogue.INSTANCE_IDS
}