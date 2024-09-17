resource  "azurerm_public_ip" "rgpip01" {
   for_each = var.varpip01
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.datarg.name
  location            = data.azurerm_resource_group.datarg.location
  allocation_method   = "Static"
  
}