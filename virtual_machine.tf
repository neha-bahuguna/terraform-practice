resource "azurerm_windows_virtual_machine" "appvm1" {
  name                = "appvm"
  resource_group_name = azurerm_resource_group.ankitrg.name
  location            = "east us"
  size                = "Standard_D2s_v3"
  admin_username      = "adminuser"
  admin_password      = "Azure@123"
  #zone                = (count.index)
  #availability_set_id = azurerm_availability_set.availabilityneha.id
  network_interface_ids = [
    azurerm_network_interface.appinterface.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

}

# # resource "azurerm_managed_disk" "extradisk" {
# #   name                 = "vmextradisk"
# #   location             = local.location
# #   resource_group_name  = local.resource_group_name
# #   storage_account_type = "Standard_LRS"
# #   create_option        = "Empty"
# #   disk_size_gb         = "16"

# }

# resource "azurerm_virtual_machine_data_disk_attachment" "aappdiskattach" {
#   managed_disk_id    = azurerm_managed_disk.extradisk.id
#   virtual_machine_id = azurerm_windows_virtual_machine.appvm1.id
#   lun                = "0"
#   caching            = "ReadWrite"

# }

# resource "tls_private_key" "linuxkey" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "local_file" "linuxpemkey" {
#   filename = "linuxkey.pem"
#   content  = tls_private_key.linuxkey.private_key_pem
#   depends_on = [
#     tls_private_key.linuxkey
#   ]
# }


# resource "azurerm_linux_virtual_machine" "linuxvm" {
#   name                = "linuxvm"
#   resource_group_name = local.resource_group_name
#   location            = local.location
#   size                = "Standard_D2s_v3"
#   admin_username      = "linuxusr"
#   network_interface_ids = [
#     azurerm_network_interface.appinterface.id
#   ]

#   admin_ssh_key {
#     username   = "linuxusr"
#     public_key = tls_private_key.linuxkey.public_key_openssh
#   }
#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-focal"
#     sku       = "20_04-lts"
#     version   = "latest"
#   }
#   depends_on = [
#     azurerm_network_interface.appinterface,
#     azurerm_resource_group.ankitrg,
#     tls_private_key.linuxkey

#   ]
# }




