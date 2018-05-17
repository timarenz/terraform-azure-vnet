resource "azurerm_resource_group" "default" {
  name     = "${var.environment_name}-rg"
  location = "${var.azure_region}"
}

resource "azurerm_virtual_network" "default" {
  name                = "${var.environment_name}"
  address_space       = ["192.168.0.0/16"]
  location            = "${azurerm_resource_group.default.location}"
  resource_group_name = "${azurerm_resource_group.default.name}"
}

resource "azurerm_subnet" "public" {
  name                 = "${var.environment_name}-subnet-public"
  resource_group_name  = "${azurerm_resource_group.default.name}"
  virtual_network_name = "${azurerm_virtual_network.default.name}"
  address_prefix       = "192.168.1.0/24"
}

resource "azurerm_subnet" "private" {
  name                 = "${var.environment_name}-subnet-private"
  resource_group_name  = "${azurerm_resource_group.default.name}"
  virtual_network_name = "${azurerm_virtual_network.default.name}"
  address_prefix       = "192.168.2.0/24"
}
