 resource "azurerm_resource_grup" "test" {
   name     = var.resource_group_name
   location = var.location
}
resource "azurerm_storage_account" "sa" {
  name                    =var.storage_account_name
  resource_group_name     =azurerm_resource_grup.test.name
  location                =azurerm_resource_grup.test.location
  access_tier             =var.access_tier
  account_replication_type=var.account_replication_type

}
