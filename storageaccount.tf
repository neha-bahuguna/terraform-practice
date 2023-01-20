resource "azurerm_storage_account" "nehastorageaccount" {
  name                     = "ankitstorageaccount3"
  resource_group_name      = azurerm_resource_group.ankitrg.name
  location                 = "east us"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"

 tags = {
    Provisioner = "Terraform"
    Managedby = "Neha"
  }
}
resource "azurerm_storage_container" "data" {
  name                  = "data"
  storage_account_name  = "ankitstorageaccount3"
  container_access_type = "blob"
  depends_on = [
    azurerm_storage_account.nehastorageaccount
  ]
}

resource "azurerm_storage_blob" "maintf" {
  name                   = "main.tf"
  storage_account_name   = azurerm_storage_account.nehastorageaccount.name
  storage_container_name = "data"
  type                   = "Block"
  source                 = "README.md"
}