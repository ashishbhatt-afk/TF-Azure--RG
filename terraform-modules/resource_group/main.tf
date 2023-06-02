resource "azurerm_resource_group" "rg" {
  name     = var.rg_Name
  location = var.location
}