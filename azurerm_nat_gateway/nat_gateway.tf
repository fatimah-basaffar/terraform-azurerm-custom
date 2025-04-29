resource "azurerm_nat_gateway" "nat_gateway" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = "Standard"
}
