resource "azurerm_sql_server" "alok9" {
    for_each = var.sqls
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = "th1isIsDog1"
  }
  