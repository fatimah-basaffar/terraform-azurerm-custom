resource "azurerm_monitor_action_group" "monitor_action_group" {
  name                = var.name
  resource_group_name = var.resource_group_name
  short_name          = var.short_name

  email_receiver {
    name          = "default-email"
    email_address = var.email_address
  }
}
