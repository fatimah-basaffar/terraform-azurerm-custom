resource "azurerm_lb" "load_balancer" {
  name                = var.name
  sku                 = var.sku
  location            = var.location
  resource_group_name = var.resource_group_name

  frontend_ip_configuration {
    name                 = var.frontend_ip_configuration_name
    subnet_id = var.subnet_id
  }
}