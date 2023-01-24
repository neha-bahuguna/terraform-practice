
resource "azurerm_resource_group" "ankitrg" {
  name     = "1992neharg-003"
  location = "east us"
}

  resource "azurerm_public_ip" "Publicip" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = azurerm_resource_group.ankitrg.name
  location            = "east us"
  allocation_method   = "Dynamic"
  tags = {
    Provisioner = "Terraform"
    Managedby   = "Neha"
    
  }
}

