data "azurerm_resource_group" "datarg" {
  name = "rg-dev-dev01"
}

data "azurerm_network_interface" "datanic" {
  name                = "goazrdev01-nic"
  resource_group_name = data.azurerm_resource_group.datarg.name
}

