resource "azurerm_network_interface" "nicdev01" {
    for_each = var.azrnicdev01

    name = each.value.name
    resource_group_name = data.azurerm_resource_group.datarg.name
    location = data.azurerm_resource_group.datarg.location
    
    ip_configuration {
      
      name = "internal"
      subnet_id = data.azurerm_subnet.datasubnet.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = data.azurerm_public_ip.datapip.id
    }
  
}