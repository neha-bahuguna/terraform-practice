resource "azurerm_storage_account" "nehastorageaccount" {
  name                     = "ankitstorageaccount3"
  resource_group_name      = "1992neharg"
  location                 = "east us"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"

 tags = {
    Provisioner = "Terraform"
    Managedby = "Neha"
  }
}