/*
-------------------------
UK vEOS Router
-------------------------
*/
resource "google_compute_route" "default" {
  name        = "uk-loopback"
  dest_range  = "${var.uk-veos-loopback-mgmt}"

  project                 = "${module.proj_transit_uk.proj_id_output}"
  network                 = "${module.transit-uk-vpc.network_name_output}"

  next_hop_ip = "${var.uk-veos-private-ip}"
  priority    = 10
}