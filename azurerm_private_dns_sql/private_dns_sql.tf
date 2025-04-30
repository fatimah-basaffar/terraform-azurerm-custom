resource "azurerm_private_dns_zone" "sql_dns" {
  name                = var.dns_zone_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "sql_dns_link" {
  name                  = "${var.dns_zone_name}-link"
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.sql_dns.name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = true
}

resource "azurerm_private_dns_a_record" "sql_dns_record" {
  name                = var.sql_server_name
  zone_name           = azurerm_private_dns_zone.sql_dns.name
  resource_group_name = var.resource_group_name
  ttl                 = 300
  records             = [var.private_ip_address]
}
