resource "azurerm_sql_database" "alok10" {
    for_each = var.sqlds
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  server_name         = each.value.server_name
}