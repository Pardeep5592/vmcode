module "rgmodule" {
  source = "../../module/resource_group"
  rgs    = var.rgs

}

module "networkmodule" {

  source     = "../../module/networking"
  vnets      = var.vnets
  depends_on = [module.rgmodule]

}

module "nicmodule" {
  source     = "../../module/nic"
  nics       = var.nics
  depends_on = [module.rgmodule, module.networkmodule]

}

module "vmmodule" {
  source     = "../../module/vm"
  vms        = var.vms
  depends_on = [module.rgmodule, module.networkmodule, module.nicmodule]

}
