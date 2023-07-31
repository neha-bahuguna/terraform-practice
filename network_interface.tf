
# resource "azurerm_network_interface" "appinterface" {
#   name                = "nehainterface"
#   location            = "east us"
#   resource_group_name = azurerm_resource_group.ankitrg.name
#   ip_configuration {
#     name = "testconfiguration1"
#     #subnet_id                     = azurerm_subnet.subneta[count.index].id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.Publicip.id
#   }
#   tags = {
#     Provisioner = "Terraform"
#     Managedby   = "Neha"
#   }
# }