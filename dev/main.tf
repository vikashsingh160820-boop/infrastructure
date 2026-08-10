module "azurerm_resource_group" {
  source = "../child-module/resource_group"
  rg     = var.rg

}
module "azurerm_virtual_network" {
  source     = "../child-module/vnet"
  vnet       = var.vnet
  depends_on = [module.azurerm_resource_group]

}
module "azurerm_subnet" {
  source     = "../child-module/subnet"
  subnet     = var.subnet
  depends_on = [module.azurerm_resource_group, module.azurerm_virtual_network]

}
module "azurerm_public_ip" {
  source     = "../child-module/public_ip"
  public_ip  = var.public_ip
  depends_on = [module.azurerm_resource_group]

}
module "azurerm_virtual_machine" {
  source     = "../child-module/vm"
  vm         = var.vm
  depends_on = [module.azurerm_public_ip, module.azurerm_resource_group, module.azurerm_subnet, module.azurerm_subnet]

}
