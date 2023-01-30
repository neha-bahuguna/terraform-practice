resource "azurerm_lb" "lbtest" {
  name                = "TestLoadBalancer"
  location            = "east us"
  resource_group_name = azurerm_resource_group.ankitrg.name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.Publicip.id
  }
}