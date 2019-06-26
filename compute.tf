/*
-------------------------
UK Test Compute Instance
-------------------------
*/
/*
resource "google_compute_instance" "uk_test_instance" {
    project             = "${module.proj_transit_uk.proj_id_output}"
    name                = "uk-test-instance"
    machine_type        = "n1-standard-1"
    zone                = "europe-west2-a"

    tags                = ["test"]

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }

    network_interface {
        subnetwork_project = "${module.proj_transit_uk.proj_id_output}"
        subnetwork = "subnet-01"
        access_config = {
        }
    }

  metadata {
    ssh-keys = "omid:${file(var.veos_sshkey_path)}"
  }        
}
*/