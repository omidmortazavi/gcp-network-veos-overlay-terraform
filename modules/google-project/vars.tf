variable "org_id" {
    description = "The ID of the organisation"
    default = ""
}
variable "billing_account" {
    description = "The ID of billing account this project is associated with"
    default = ""
}
variable "folder_id" {
    description = "The ID of the folder to host this project"
    default = ""
}
variable "name" {
    description = "The name of the project"
    default = ""
}
variable "project_id" {
    description = "The Project ID"
    default = ""
}
variable "activate_apis" {
    description = "The list of API's to active within the Project"
    type = "list"
    default = ["compute.googleapis.com"]
}
variable "labels" {
    description = "Map of labels for project"
    type = "map"
    default = {}
}


