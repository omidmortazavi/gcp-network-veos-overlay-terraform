# User Defined Variables

/*
----------------------------------
Global Variables
----------------------------------
*/

variable "org_id" {
    default = "53048157613"
}

variable "billing_account" {
    default = "0182B6-DB3E1C-E4636A"
}

variable "credentials_path" {
    default = "/home/omid/.keys/gcp-lab-admin-3b5c555b6782.json"
}

variable "default_region" {
    default = "europe-west2"
}

variable "prod_folder_id" {
    default = "1058117425975"
}

variable "veos_sshkey_path" {
    default = "/home/omid/.ssh/omid/id_rsa.pub"
}
/*
----------------------------------
Subnet Variables
----------------------------------
*/
variable "transit-uk-vpc-primarycidr" {
    default = "10.10.0.0/16"
}

variable "transit-us-vpc-primarycidr" {
    default = "10.20.0.0/16"
}

