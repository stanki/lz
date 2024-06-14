resource "azurerm_resource_group" "domains" {
  name     = "domains"
  location = "westus"
}
resource "azurerm_dns_zone" "cloudpsnet" {
  name                = "cloudps.net"
  resource_group_name = azurerm_resource_group.domains.name
}