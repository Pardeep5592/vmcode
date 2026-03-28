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
