resource "azurerm_resource_group" "rg01" {
 for_each = var.azrrg01
  name = each.value.name
  location = each.value.location
  
}