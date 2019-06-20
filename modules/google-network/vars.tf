variable "project_id" {
    description = "The ID of the project where the VPC will be created"
}
variable "network_name" {
    description = "The name of the network being created"
}
variable "routing_mode" {
    description = "Sets the network-wide routing mode for Cloud Routers to use. Accepted values are GLOBAL or REGIONAL"
    type = "string"
}
variable "subnets" {
    description = "The ID of billing account this project is associated with"
    type = "list"
}
