# Specify the provider (GCP in this case)

provider "google" {
  credentials = "${file(var.credentials_path)}"
  project     = "gcp-lab-admin"
  region      = "${var.default_region}"
}