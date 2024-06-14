resource "azurerm_resource_group" "this" {
  location = "polandcentral"
  name     = "rg-networking"
}
resource "azurerm_virtual_network" "this" {
  name                = "vnet"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = ["10.11.0.0/16"]
}