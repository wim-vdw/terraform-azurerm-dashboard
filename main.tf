resource "azurerm_portal_dashboard" "dashboard" {
  dashboard_properties = var.dashboard_properties
  location             = var.location
  name                 = var.name
  resource_group_name  = var.resource_group.name
  tags = merge(
    var.resource_group.tags,
    var.additional_tags,
    { hidden-title = var.title },
    { module-version = "v5.2.0-alpha.2" }
  )
}
