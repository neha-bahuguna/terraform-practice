resource "azurerm_virtual_network" "nehavirtualnetwork" {
  name                = "V-network"
  location            = "east us"
  resource_group_name = azurerm_resource_group.ankitrg.name
  address_space       = ["10.0.0.0/16"]

  
  tags = {
    Provisioner = "Terraform"
    Managedby   = "Neha"
  }
}




