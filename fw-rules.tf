/*
-------------------------
vEOS Management SSH
-------------------------
*/

// UK Rules
// !!! Refactor to use module
resource "google_compute_firewall" "veos-mgmt-allow-ssh-in-uk" {
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
// US Rules
resource "google_compute_firewall" "veos-mgmt-allow-ssh-in-us" {
    name                    = "veos-mgmt-allow-ssh-in"
    project                 = "${module.proj_transit_us.proj_id_output}"
    network                 = "${module.transit-us-vpc.network_name_output}"

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
// UK Rules
resource "google_compute_firewall" "veos-ipsec-in-uk" {
    name                    = "veos-ipsec-in"
    project                 = "${module.proj_transit_uk.proj_id_output}"
    network                 = "${module.transit-uk-vpc.network_name_output}"

    allow {
        protocol            = "ah"
    }
    allow {
        protocol            = "esp"
    }
    allow {
        protocol            = "udp"
        ports               = ["500"]
    }

    source_ranges           = ["10.20.0.0/16"]   # US Range
    target_tags             = ["veos"]
    priority                = "110"
}

// US Rules
resource "google_compute_firewall" "veos-ipsec-in-us" {
    name                    = "veos-ipsec-in"
    project                 = "${module.proj_transit_us.proj_id_output}"
    network                 = "${module.transit-us-vpc.network_name_output}"

    allow {
        protocol            = "ah"
    }
    allow {
        protocol            = "esp"
    }
    allow {
        protocol            = "udp"
        ports               = ["500"]
    }

    source_ranges           = ["10.10.0.0/16"]   # UK Range
    target_tags             = ["veos"]
    priority                = "110"
}
