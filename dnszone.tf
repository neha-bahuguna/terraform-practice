
# resource "azurerm_dns_zone" "dnszone" {
#   name                = "nehadomain.com"
#   resource_group_name = local.resource_group_name
#   depends_on = [
    
#   ]
  
# resource "azurerm_dns_zone" "publiczone" {
#   name                = "cloudportalhub.com"
#   resource_group_name = local.resource_group_name
# }

# output "server_names"{
#   value=azurerm_dns_zone.publiczone.name_servers
# }

# // Pointing the domain name to the load balancer
# resource "azurerm_dns_a_record" "load_balancer_record" {
#   name                = "www"
#   zone_name           = azurerm_dns_zone.publiczone.name
#   resource_group_name = local.resource_group_name
#   ttl                 = 360
#   records             = [azurerm_public_ip.loadip.ip_address]
# }

