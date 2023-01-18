
resource "azurerm_resource_group" "ankitrg" {
  name     = "1992neharg-003"
  location = "east us"
  tags = {
    Provisioner = "Terraform"
    Managedby = "Neha"
  }
}