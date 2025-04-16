variable "resource_group_name" {

    type = string
  
}

variable "name" {

    type = string
  
}

variable "location" {

    type = string
  
}

variable "network_interface_ids" {

    type = any
  
}

variable "disksize" {

    type = string

    default = "Standard_DS1_v2"
  
}

variable "os_disk_name" {

    type = string
  
}

variable "os_disk_caching" {

    type    = string

    default = "ReadWrite"

}

variable "os_disk_storage_account_type" {

    type = string

    default = "Premium_LRS"

}

variable "source_image_reference_publisher" {

    type = string

    default = "Canonical"

}

variable "source_image_reference_offer" {

    type = string

    default = "UbuntuServer"

}

variable "source_image_reference_sku" {

    type = string

    default = "18.04-LTS"

}

variable "source_image_reference_version" {

    type = string

    default = "latest"

}

variable "virtual_machine_name" {

    type = string
  
}

variable "vm_admin_username" {

    type = string

}

variable "vm_disable_password_authentication" {

    type = bool

    default = true
  
}

variable "tags" {

    type = map(any)

    default = null
  
}