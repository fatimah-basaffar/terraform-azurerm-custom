resource "azurerm_lb_rule" "lb_rule" {
  name                           = var.name
  loadbalancer_id                = var.loadbalancer_id
  protocol                       = var.protocol
  frontend_port                  = var.frontend_port
  backend_port                   = var.backend_port
  frontend_ip_configuration_name = var.frontend_ip_configuration_name
}