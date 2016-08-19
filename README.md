# Storage Container Terraform module

A Terraform module to provide a Storage Container on Microsoft Azure.

# Setup

- `name` - The name of the virtual network.
- `resource_group_name` - The name of the resource group in which to create the virtual network.
- `storage_account_name` - Specifies the storage account in which to create the storage container.
- `container_access_type` - The 'interface' for access the container provides. Can be either blob, container or private.

# Run

```js
module "storage_container" {
    source = "github.com/moltin/tf_azure_storage_container"

    name = "${var.app_name}${var.storage_container_name}"
    resource_group_name = "${module.resource_group.name}"
    storage_account_name = "${module.storage_account.name}"
    container_access_type = "${var.container_access_type}"
}
```

## Outputs

- `id` - The storage blob Resource ID.
- `name` - The storage container name.
- `properties` - Key-value definition of additional properties associated to the storage container

# Resources

- [Terraform Microsoft Azure Resource Manager - Storage container](https://www.terraform.io/docs/providers/azurerm/r/storage_container.html)
