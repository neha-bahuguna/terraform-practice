
resource "azurerm_resource_group" "ankitrg" {
  name     = local.resource_group_name
  location = "east us"
}

resource "azurerm_public_ip" "Publicip" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = azurerm_resource_group.ankitrg.name
  location            = "east us"
  allocation_method   = "Dynamic"
  #zones = ["${count.index+1}"]
  depends_on = [
    azurerm_resource_group.ankitrg
  ]
}

