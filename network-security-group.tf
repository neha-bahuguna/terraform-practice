

resource "azurerm_network_security_group" "NterrSG" {
  name                = "neha-NSG"
  location            = "east us"
  resource_group_name = azurerm_resource_group.ankitrg.name

 security_rule {
    name                       = "AllowRDP"
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }


  tags = {
    Provisioner = "Terraform"
    Managedby = "Neha"
  }
}