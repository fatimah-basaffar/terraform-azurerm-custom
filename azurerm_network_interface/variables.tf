variable "resource_group_name" {

    type = string
  
}

variable "name" {

    type = string
  
}

variable "location" {

    type = string
  
}

variable "ip_configuration_name" {

    type = string
  
}

variable "subnet_id" {

    type = any
  
}

variable "private_ip_address_allocation" {

    type = string

    default = "Dynamic"
  
}

variable "public_ip_address_id" {

    type = any
  
}