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
