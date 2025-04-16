resource "random_id" "random_id" {

    keepers = {
        # Generate a new ID only when a new resource group is defined
        resource_group = var.resource_group_name
    }
    byte_length = 8
}

resource "azurerm_storage_account" "mystorageaccount" {

    name = "diag${random_id.random_id.hex}"

    resource_group_name = var.resource_group_name

    location = var.location

    account_replication_type = var.account_replication_type

    account_tier = var.account_tier

}
