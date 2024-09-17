data "azurerm_resource_group" "datarg" {
  name = "rg-dev-dev01"
}
data "azurerm_public_ip" "datapip" {
  name                = "goazrvnet-pip"
  resource_group_name = data.azurerm_resource_group.datarg.name
}

data "azurerm_subnet" "datasubnet" {
  name                 = "GOBEISBNT01"
  virtual_network_name = "GOAZRVNET01"
  resource_group_name  = data.azurerm_resource_group.datarg.name
}

