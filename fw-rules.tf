/*
-------------------------
vEOS Management SSH
-------------------------
*/

resource "google_compute_firewall" "veos-mgmt-allow-ssh-in" {
    name                    = "veos-mgmt-allow-ssh-in"
    project                 = "${module.proj_transit_uk.proj_id_output}"
    network                 = "${module.transit-uk-vpc.network_name_output}"

    allow {
        protocol            = "tcp"
        ports               = ["22"]
    }

    source_ranges           = ["185.14.147.154"]
    target_tags             = ["veos"]
    priority                = "100"
}

/*
-------------------------
vEOS IPSEC Overlay
-------------------------
*/
