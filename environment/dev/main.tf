module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.resource_groups
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_virtual_network"
  vnets      = var.virtual_networks
}
