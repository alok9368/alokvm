module "alok1" {
  source = "../../module/1rg"
  rgs    = var.rgs

}
module "alok2" {
  source     = "../../module/2vnet"
  vnets      = var.vnets
  depends_on = [module.alok1]
}
module "alok3" {
  source     = "../../module/3subnet"
  subnets    = var.subnets
  depends_on = [module.alok2]

}
module "alok4" {
  source     = "../../module/4pip"
  pips       = var.pips
  depends_on = [module.alok3]

}
module "alok5" {
  source     = "../../module/5nic"
  nics       = var.nics
  depends_on = [module.alok4]

}
module "alok6" {
  source        = "../../module/6nsg"
  nsgs          = var.nsgs
  security_rule = var.security_rule
  depends_on    = [module.alok5]

}
module "alok7" {
  source = "../../module/7nsgaso"
  nsgas  = var.nsgas

  depends_on = [module.alok6]
}
module "alok8" {
  source = "../../module/8vm"
  vms = var.vms
  depends_on = [ module.alok7 ]
}
module "alok9" {
  source = "../../module/9sqlserver"
  sqls = var.sqls
  depends_on = [ module.alok8 ]
  
}
module "alok10" {
  source = "../../module/10sqldatabase"
  sqlds  = var.sqlds
  depends_on = [ module.alok9 ]
  
}