variable "name" {

    type = string
}

variable "loadbalancer_id" {

    type = string
}

variable "protocol" {

    type = string

    default = "Tcp"

}

variable "frontend_port" {

    type = string

}

variable "backend_port" {

    type = string

}

variable "frontend_ip_configuration_name" {

    type = string

}
