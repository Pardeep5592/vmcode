variable "rgs" {
  type = map(object({
    rg_name  = string
    location = string
  }))

}

variable "vnets" {
  type = map(object({

    vnet_name           = string
    location            = string
    resource_group_name = string
    cidr                = list(string)
    subnets = map(object({

      subnet_name = string
      cidr        = list(string)

    }))

  }))

}

variable "nics" {
  type = map(object({

    nic_name             = string
    location             = string
    resource_group_name  = string
    subnet_name          = string
    virtual_network_name = string
    ip_configurations = map(object({

      name                          = string
      private_ip_address_allocation = string

    }))


  }))

}

variable "vms" {
  type = map(object({
    vm_name             = string
    location            = string
    resource_group_name = string
    admin_username      = string
    admin_password      = string
    size                = string
    nic_name            = string
    username            = string
    password            = string
    kv_name             = string
  }))


}

