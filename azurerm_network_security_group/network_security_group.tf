resource "azurerm_network_security_group" "network_security_group" {

    resource_group_name = var.resource_group_name

    name = var.name

    location = var.location
  
}