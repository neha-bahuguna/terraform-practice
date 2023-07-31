resource "azurerm_virtual_network" "nehavirtualnetwork" {
  name                = local.virtual_network.name
  location            = local.location
  resource_group_name = azurerm_resource_group.ankitrg.name
  address_space       = [local.virtual_network.address_space]


  tags = {
    Provisioner = "Terraform"
    Managedby   = "Neha"
  }
}




