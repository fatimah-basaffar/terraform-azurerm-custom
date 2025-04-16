resource "azurerm_subnet" "subnets" {

    resource_group_name = var.resource_group_name

    virtual_network_name = var.virtual_network_name

    name = var.name

    address_prefixes = var.address_prefixes
  
}