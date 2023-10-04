data "azurerm_resource_group" "rg" {
  name = var.resource_group
}

resource "azurerm_portal_dashboard" "dashboard" {
  dashboard_properties = var.dashboard_properties
  location             = var.location
  name                 = var.name
  resource_group_name  = data.azurerm_resource_group.rg.name
  tags = merge(
    data.azurerm_resource_group.rg.tags,
    var.additional_tags,
    { hidden-title = var.title },
    { module-version = "2.0.1" }
  )
}
