resource "azurerm_storage_container" "mod" {
    name = "${var.name}"
    resource_group_name = "${var.resource_group.name}"
    storage_account_name = "${var.storage_account_name}"
    container_access_type = "${var.container_access_type}"
}
