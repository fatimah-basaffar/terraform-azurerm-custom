variable "name" {

    type = string
  
}

variable "location" {

    type = string
  
}

variable "resource_group_name" {

    type = string
  
}

variable "subnet_id" {

    type = string
  
}

variable "private_service_connection_name" {

    type = string
  
}

variable "private_connection_resource_id" {

    type = string
  
}

variable "is_manual_connection" {

    type = bool

    default = false
  
}

variable "subresource_names" {
  
  type = set(string)
  default = ["sqlServer"]
  
}