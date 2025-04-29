variable "name" {
  type        = string
}

variable "location" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}
variable "sku_name" {
    type = string
    default = "Standard"
}
variable "public_ip_id" {
  type        = string
}
