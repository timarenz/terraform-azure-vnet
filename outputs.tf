output "azure_rg_name" {
  value = "${azurerm_resource_group.default.name}"
}

output "azure_public_subnet_name" {
  value = "${azurerm_subnet.public.name}"
}

output "azure_public_subnet_id" {
  value = "${azurerm_subnet.public.id}"
}

output "azure_public_subnet_cidr" {
  value = "${azurerm_subnet.public.address_prefix}"
}

output "azure_private_subnet_name" {
  value = "${azurerm_subnet.private.name}"
}

output "azure_private_subnet_id" {
  value = "${azurerm_subnet.private.id}"
}

output "azure_private_subnet_cidr" {
  value = "${azurerm_subnet.private.address_prefix}"
}
