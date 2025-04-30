resource "azurerm_monitor_diagnostic_setting" "diagnostic_setting" {
  name                       = var.name
  target_resource_id         = var.vm_id
  log_analytics_workspace_id = var.workspace_id

  metric {
    category = "AllMetrics"
    enabled  = true
  }
}
