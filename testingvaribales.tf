# resource "azurerm_network_security_group" "test" {
#   name                = local.security_group_name
#   location            = "east us"
#   resource_group_name = data.azurerm_resource_group.datas.name

#   security_rule {
#     name                       = "AllowRDP"
#     priority                   = 300
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "3389"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }
# }





# locals {
#   security_group_name = "ankit"
#   }
