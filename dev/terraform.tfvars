rg = {
  rg1 = {
    name     = "dolly-rg"
    location = "japaneast"
  }
}
vnet = {
  vnet1 = {
    name                = "vnet01"
    resource_group_name = "dolly-rg"
    location            = "japaneast"

    address_space = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "subnet01"
    resource_group_name  = "dolly-rg"
    virtual_network_name = "vnet01"
    address_prefixes     = ["10.0.1.0/24"]

  }
  subnet2 = {
    name                 = "subnet02"
    resource_group_name  = "dolly-rg"
    virtual_network_name = "vnet01"
    address_prefixes     = ["10.0.2.0/24"]

  }
}
public_ip = {
  public_ip1 = {
    name                = "public_ip01"
    resource_group_name = "dolly-rg"
    location            = "japaneast"
    allocation_method   = "Static"
  }
  public_ip2 = {
    name                = "public_ip02"
    resource_group_name = "dolly-rg"
    location            = "japaneast"
    allocation_method   = "Static"
  }
}
vm = {
  vm1 = {
    nic_name                 = "vm_nic01"
    resource_group_name      = "dolly-rg"
    location                 = "japaneast"
    nic_subnet_name          = "subnet01"
    nic_virtual_network_name = "vnet01"
    nic_public_ip_name       = "public_ip01"
    vm_name                  = "vm01"
    vm_size                  = "Standard_D2s_v3"
    admin_username           = "vks01"
    admin_password           = "vikash@1234567"
  }
  vm2 = {
    nic_name                 = "vm_nic02"
    resource_group_name      = "dolly-rg"
    location                 = "japaneast"
    nic_subnet_name          = "subnet02"
    nic_virtual_network_name = "vnet01"
    nic_public_ip_name       = "public_ip02"
    vm_name                  = "vm02"
    vm_size                  = "Standard_D2s_v3"
    admin_username           = "vks02"
    admin_password           = "vikash@1234567"
  }

}

