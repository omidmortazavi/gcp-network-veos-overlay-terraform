/*
-------------------------
UK Transit Project
-------------------------
*/
module "proj_transit_uk" {
  source = "./modules/google-project"
  name = "transit-uk"
  folder_id = "${var.prod_folder_id}"
  activate_apis = 
    ["compute.googleapis.com", 
    "servicenetworking.googleapis.com", 
    "cloudresourcemanager.googleapis.com",
    "servicemanagement.googleapis.com"
    ]
  billing_account = "${var.billing_account}"
  labels = {
    environment = "prod"
    geography = "uk"
    owner = "lab"
  }
}

/*
-------------------------
US Transit Project
-------------------------
*/
module "proj_transit_us" {
  source = "./modules/google-project"
  name = "transit-us"
  folder_id = "${var.prod_folder_id}"
  activate_apis = 
    ["compute.googleapis.com", 
    "servicenetworking.googleapis.com", 
    "cloudresourcemanager.googleapis.com",
    "servicemanagement.googleapis.com"
    ]
  billing_account = "${var.billing_account}"
  labels = {
    environment = "prod"
    geography = "us"
    owner = "lab"
  }
}

/*
-------------------------
APAC Transit Project
-------------------------
module "transit_apac_pet" {
  source = "./modules/random-pet"
}
*/