

resource "azurerm_network_security_group" "NterrSG" {
  name                = "neha-NSG"
  location            = "east us"
  resource_group_name = azurerm_resource_group.ankitrg.name



  dynamic "security_rule"{
    for_each = local.network_securitygroup_rules
    content {
      name ="Allow-${security_rule.value.destination_port_range}"
      priority =security_rule.value.priority
      direction = "Inbound"
      access = "Allow"
      protocol ="Tcp"
      source_port_range = "*"
      destination_port_range = security_rule.value.destination_port_range
      source_address_prefix = "*"
      destination_address_prefix = "*"
    }
  }

 

  tags = {
    Provisioner = "Terraform"
    Managedby   = "Neha"
  }
}