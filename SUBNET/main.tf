resource "azurerm_subnet" "azrsubnet01" {
    for_each = var.azrdevsbnt01
    name = each.value.name
    resource_group_name = data.azurerm_resource_group.datarg.name
    virtual_network_name = data.azurerm_virtual_network.datavnet.name
    address_prefixes = each.value.address_prefixes
  
}