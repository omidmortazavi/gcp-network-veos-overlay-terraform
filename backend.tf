# Backend - Remote location for state file storage
# Interpolations (vars) cannot be used as backed is initilized extremely early in the process

terraform {
    backend "gcs" {
        bucket = "gcp-lab-tf-state"
        prefix = "lab-build"
        region = "europe-west2"
        credentials = "/home/omid/.keys/gcp-lab-admin-3b5c555b6782.json"
    }
}