variable "name" {

    type = string
  
}

variable "location" {

    type = string
  
}

variable "resource_group_name" {

    type = string
  
}

variable "nat_ip_configuration_name" {

    type = string
  
}

variable "primary" {

    type = bool

    default = true
  
}

variable "subnet_id" {

    type = string
  
}

variable "load_balancer_frontend_ip_configuration_ids" {

    type = set(string)
  
}