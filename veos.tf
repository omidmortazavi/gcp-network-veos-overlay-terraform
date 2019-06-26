/*
-------------------------
UK vEOS Router
-------------------------
*/
resource "google_compute_instance" "veos_uk" {
    project             = "${module.proj_transit_uk.proj_id_output}"
    name                = "veos-transit-uk"
    machine_type        = "n1-standard-1"
    zone                = "europe-west2-a"
    can_ip_forward      = "true"

    tags                = ["veos"]

    boot_disk {
        initialize_params {
            image="https://www.googleapis.com/compute/v1/projects/sw-veos-public/global/images/arista-eos-4-21-3f-01-16-2019"
        }
    }

    network_interface {
        subnetwork_project = "${module.proj_transit_uk.proj_id_output}"
        subnetwork = "subnet-01"
        #network = "transit-uk-vpc"
        network_ip = "${var.uk-veos-private-ip}"
        access_config = {
        }
    }

  metadata {
    ssh-keys = "omid:${file(var.veos_sshkey_path)}"
  }        
}