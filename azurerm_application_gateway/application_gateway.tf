resource "azurerm_application_gateway" "app_gateway" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  sku {
    name     = var.sku_name
    tier     = var.sku_tier
    capacity = var.capacity
  }

  gateway_ip_configuration {
    name      = var.gateway_name
    subnet_id = var.subnet_id
  }

  frontend_port {
    name = var.frontend_port_name
    port = var.frontend_port
  }

  frontend_ip_configuration {
    name                 = var.frontend_ip_configuration_name
    public_ip_address_id = var.public_ip_address_id
  }

  backend_address_pool {
    name = var.backend_address_pool
  }

  backend_http_settings {
    name                                = var.backend_http_settings_name
    cookie_based_affinity               = var.cookie_based_affinity
    path                                = var.path
    port                                = var.http_port
    protocol                            = var.backend_protocol
    request_timeout                     = var.request_timeout
    probe_name                          = var.probe_name
    pick_host_name_from_backend_address = false
  }

  http_listener {
    name                           = var.http_listener_name
    frontend_ip_configuration_name = var.frontend_ip_configuration_name
    frontend_port_name             = var.frontend_port_name
    protocol                       = var.http_protocol
  }

  request_routing_rule {
    name                       = var.request_routing_rule_name
    priority                   = var.priority
    rule_type                  = var.rule_type
    http_listener_name         = var.http_listener_name
    backend_address_pool_name  = var.backend_address_pool_name
    backend_http_settings_name = var.backend_http_settings_name
  }

  probe {
    name                                      = "backend-health-probe"
    protocol                                  = "Http"
    host                                      = "127.0.0.1"
    path                                      = "/"
    interval                                  = 30
    timeout                                   = 30
    unhealthy_threshold                       = 3
    pick_host_name_from_backend_http_settings = false
    port                                      = 80

    match {
      status_code = ["200-404"]
    }
  }
}
