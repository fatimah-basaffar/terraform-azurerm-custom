resource "azurerm_network_interface_security_group_association" "nic_nsg_association" {

    network_interface_id      = azurerm_network_interface.nic.id

    network_security_group_id = azurerm_network_security_group.nsg.id
}