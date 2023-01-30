# resource "azurerm_subnet" "subneta" {
#   count                = var.number_of_subnets
#   name                 = "neha-subnet1"
#   resource_group_name  = azurerm_resource_group.ankitrg.name
#   virtual_network_name = azurerm_virtual_network.nehavirtualnetwork.name
#   address_prefixes     = ["10.0.1.0/24"]

# }



