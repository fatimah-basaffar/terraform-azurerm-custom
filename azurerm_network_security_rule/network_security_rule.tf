resource "azurerm_network_security_rule" "network_security_rule" {
    
    resource_group_name = var.resource_group_name

    network_security_group_name = var.network_security_group_name

    name = var.name
    
    priority = var.value.priority

    direction = var.value.direction

    access = var.value.access

    protocol = var.value.protocol

    source_port_range = var.value.source_port_range

    destination_port_range = var.value.destination_port_range

    source_address_prefix = var.value.source_address_prefix

    destination_address_prefix = var.value.destination_address_prefix

}