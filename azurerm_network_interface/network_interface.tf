resource "azurerm_network_interface" "network_interface" {

    resource_group_name = var.resource_group_name

    name = var.name
    
    location = var.location

    ip_configuration {
        name = var.ip_configuration_name  
        subnet_id = var.subnet_id       
        private_ip_address_allocation = var.private_ip_address_allocation
        public_ip_address_id = var.public_ip_address_id
    }
  
}