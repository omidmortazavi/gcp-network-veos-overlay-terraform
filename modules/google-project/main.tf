/*
-------------------------
Local Configuration
-------------------------
*/
locals {
    project_id = "${random_pet.new_pet.id}"
    project_name = "${var.name}"
    project_folder_id = "${var.folder_id}"
    project_billing_account = "${var.billing_account}"
    project_labels = "${var.labels}"
}
/*
-------------------------
Generate Random Pet Name for Project
-------------------------
*/
resource "random_pet" "new_pet" {
}

/*
-------------------------
API Activation
-------------------------
*/
resource "google_project_service" "project_services" {
  count = "${length(var.activate_apis)}"

  project = "${local.project_id}"
  service = "${element(var.activate_apis, count.index)}"

  depends_on = ["google_project.project"]
}

/*
-------------------------
Create Project
-------------------------
*/
resource "google_project" "project" {
  name = "${local.project_name}"
  project_id = "${local.project_id}"
  folder_id = "${local.project_folder_id}"
  billing_account = "${local.project_billing_account}"
  auto_create_network = "false"
  labels = "${local.project_labels}"
}