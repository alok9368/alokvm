resource "azurerm_resource_group" "alok" {
    for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}