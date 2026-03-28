resource "azurerm_linux_virtual_machine" "vm" {
  for_each                        = var.vms
  name                            = each.value.vm_name
  location                        = each.value.location
  resource_group_name             = each.value.resource_group_name
  disable_password_authentication = false
  admin_username                  = data.azurerm_key_vault_secret.username[each.key].id
  admin_password                  = data.azurerm_key_vault_secret.password[each.key].id
  network_interface_ids = [
  data.azurerm_network_interface.nic[each.key].id]
  size = each.value.size

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

}
