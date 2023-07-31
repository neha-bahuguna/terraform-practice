# resource "azurerm_storage_account" "nehastorageaccount" {
#   count                    = 3
#   name                     = "${count.index}nehastorageaccount"
#   resource_group_name      = azurerm_resource_group.ankitrg.name
#   location                 = "east us"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   account_kind             = "StorageV2"
#   depends_on = [
#     azurerm_resource_group.ankitrg
#   ]
# }


# # resource "azurerm_storage_container" "data" {
# #   name                  = "data"
# #   storage_account_name  = "ankitstorageaccount3"
# #   container_access_type = "blob"
# #   depends_on = [
# #     azurerm_storage_account.nehastorageaccount
# #   ]

# resource "azurerm_storage_container" "data" {
#   for_each              = toset(["data", "files", "documents"])
#   name                  = each.key
#   storage_account_name  = azurerm_storage_account.nehastorageaccount[0].name
#   container_access_type = "blob"
# }




# resource "azurerm_storage_blob" "maintf" {
#   name                   = "main.tf"
#   storage_account_name   = azurerm_storage_account.nehastorageaccount[0].name
#   storage_container_name = azurerm_storage_container.data["files"].name
#   type                   = "Block"
#   source                 = "README.md"
# }