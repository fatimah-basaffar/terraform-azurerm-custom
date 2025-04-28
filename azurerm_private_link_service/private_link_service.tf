resource "azurerm_private_link_service" "private_link" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  nat_ip_configuration {
    name      = var.nat_ip_configuration_name
    primary   = var.primary
    subnet_id = var.subnet_id
  }

  load_balancer_frontend_ip_configuration_ids = var.load_balancer_frontend_ip_configuration_ids
}