data "azurerm_resource_group" "datarg" {
  name = "rg-dev-dev01"
}
data "azurerm_virtual_network" "datavnet" {
  name                = "GOAZRVNET01"
  resource_group_name = data.azurerm_resource_group.datarg.name
}

