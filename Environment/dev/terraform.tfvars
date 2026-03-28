rgs = {
  rg1 = {
    rg_name  = "todorg"
    location = "central india"

  }
}

vnets = {
  vnet1 = {

    vnet_name           = "vnet001"
    location            = "central india"
    resource_group_name = "todorg"
    cidr                = ["10.0.1.0/16"]
    subnets = {
      s1 = {
        subnet_name = "frontendsubnet"
        cidr        = ["10.0.1.0/24"]
      }
      s2 = {
        subnet_name = "backendsubnet"
        cidr        = ["10.0.2.0/24"]
      }
    }


  }
}

nics = {
  nic1 = {

    nic_name             = "nic001"
    location             = "central india"
    resource_group_name  = "todorg"
    subnet_name          = "frontendsubnet"
    virtual_network_name = "vnet001"
    ip_configurations = {
      ip1 = {
        name                          = "internal"
        private_ip_address_allocation = "Dynamic"
      }
    }


  }
}

vms = {
  vm1 = {
    vm_name             = "frontendvm"
    location            = "central india"
    resource_group_name = "todorg"
    admin_username      = "adminuser"
    admin_password      = "Devops@2026@13"
    size                = "Standard_F2"
    nic_name            = "nic001"
    username            = "vm-username"
    password            = "vm-password"
    kv_name             = "keyvault2803"
  }


}


