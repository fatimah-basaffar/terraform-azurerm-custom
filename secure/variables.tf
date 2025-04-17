variable "algorithm" {

    type = string

    default = "RSA"
  
}

variable "rsa_bits" {

    type = number

    default = 4096
  
}

variable "filename" {

    type = string

    default = "vm_ssh_key.pem"
  
}