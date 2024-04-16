resource "azurerm_subnet_network_security_group_association" "alok7" {
    for_each = var.nsgas
  subnet_id                 = data.azurerm_subnet.subnetdata[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsgasdata[each.key].id
}
data "azurerm_subnet" "subnetdata" {
    for_each = var.nsgas
  name                 = each.value.subnetname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_network_security_group" "nsgasdata" {
    for_each = var.nsgas
  name                = each.value.nsgname
  resource_group_name = each.value.resource_group_name
}