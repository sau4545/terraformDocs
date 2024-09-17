resource "azurerm_virtual_network" "rgvnet01" {

    for_each = var.rgazrvnet01
    name = each.value.name
    location = data.azurerm_resource_group.datarg.location
    resource_group_name = data.azurerm_resource_group.datarg.name
    address_space = each.value.address_space
    

}