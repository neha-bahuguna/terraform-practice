# data "azurerm_client_config" "current" {}
# resource "azurerm_key_vault" "keyvault" {
#   name                        = "keyvault002"
#   location                    = "east us"
#   resource_group_name         = azurerm_resource_group.ankitrg.name
#   enabled_for_disk_encryption = true
#   tenant_id                   = data.azurerm_client_config.current.tenant_id
#   soft_delete_retention_days  = 7
#   purge_protection_enabled    = false

#   sku_name = "standard"



#   access_policy {
#     tenant_id = data.azurerm_client_config.current.tenant_id
#     object_id = data.azurerm_client_config.current.object_id 

#     secret_permissions = [
#       "Get","Set"
#     ]
#   }
# }


#   resource "azurerm_key_vault_secret" "vmpassword" {
#   name         = "vmpassword"
#   value        = "Azure@123"
#   key_vault_id = azurerm_key_vault.keyvault.id
#   depends_on = [
#     azurerm_key_vault.keyvault
#   ]
# }
