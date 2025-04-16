resource "azurerm_public_ip" "public_ip" {

    resource_group_name = var.resource_group_name

    name = var.name

    location = var.location

    allocation_method = var.allocation_method
  
}