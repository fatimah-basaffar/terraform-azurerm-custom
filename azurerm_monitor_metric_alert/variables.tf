variable "name" {
    type = string
}
variable "resource_group_name" {
    type = string
}
variable "scopes" {
  type = list(string)
}
variable "description" {
    type = string
}
variable "severity" {
    type = string
}
variable "frequency" {
    type = string
}
variable "window_size" {
    type = string
}
variable "metric_namespace" {
    type = string
}
variable "metric_name" {
    type = string
}
variable "aggregation" {
    type = string
}
variable "operator" {
    type = string
}
variable "threshold" {
    type = string
}
variable "action_group_id" {
    type = string
}
variable "target_resource_type" {
  type    = string
  default = "Microsoft.Compute/virtualMachines"
}
