resource "azurerm_subnet" "example" {
  name                 = "neha-subnet1"
  resource_group_name  = azurerm_resource_group.ankitrg.name
  virtual_network_name = azurerm_virtual_network.nehavirtualnetwork.name
  address_prefixes     = ["10.0.1.0/24"]

}

resource "azurerm_subnet" "example2" {
  name                 = "neha-subnet2"
  resource_group_name  = azurerm_resource_group.ankitrg.name
  virtual_network_name = azurerm_virtual_network.nehavirtualnetwork.name
  address_prefixes     = ["10.0.0.0/24"]

}
