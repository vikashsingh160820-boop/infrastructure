data "azurerm_subnet" "subnet" {
    for_each = var.vm
    name = each.value.nic_subnet_name
    virtual_network_name = each.value.nic_virtual_network_name
    resource_group_name = each.value.resource_group_name
  
}
data "azurerm_public_ip" "public_ip" {
    for_each = var.vm
    name = each.value.nic_public_ip_name
    resource_group_name = each.value.resource_group_name
  
}