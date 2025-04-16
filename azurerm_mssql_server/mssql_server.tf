resource "azurerm_mssql_server" "sql_server" {

    resource_group_name = var.resource_group_name

    name = var.name

    location = var.location

    version = var.version
    
    administrator_login = var.administrator_login

    administrator_login_password = var.administrator_login_password
    
}