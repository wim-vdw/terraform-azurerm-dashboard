resource "azurerm_portal_dashboard" "dashboard" {
  dashboard_properties = var.dashboard_properties
  location             = var.location
  name                 = var.name
  resource_group_name  = var.resource_group
  tags = {
    hidden-title = var.title
  }
}
