resource "azurerm_virtual_network" "nehavirtualnetwork" {
  name                = local.virtual_network.name
  location            = local.location
  resource_group_name = local.resource_group_name
  address_space       = [local.virtual_network.address_space]


  tags = {
    Provisioner = "Terraform"
    Managedby   = "Neha"
  }
}




