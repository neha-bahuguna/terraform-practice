resource "azurerm_virtual_network" "nehavirtualnetwork" {
  name                = "V-network"
  location            = "east us"
  resource_group_name = azurerm_resource_group.ankitrg.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnetA"
    address_prefix = "10.0.0.0/24"
  }

  subnet {
    name           = "subnetB"
    address_prefix = "10.0.1.0/24"    
  }
  tags = {
    Provisioner = "Terraform"
    Managedby = "Neha"
  }
}




