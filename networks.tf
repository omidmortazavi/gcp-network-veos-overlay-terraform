/*
-------------------------
UK Transit Network
-------------------------
*/
module "transit-uk-vpc" {
    source = "./modules/google-network"
    project_id = "${module.proj_transit_uk.proj_id_output}"
    network_name = "transit-uk-vpc"
    routing_mode = "REGIONAL"

    subnets = [
        {
            subnet_name     = "subnet-01"
            subnet_ip       = "${cidrsubnet(var.transit-uk-vpc-primarycidr, 2, 0)}"
            subnet_region   = "europe-west2"
        }
    ]
}

/*
-------------------------
US Transit Network
-------------------------
*/
module "transit-us-vpc" {
    source = "./modules/google-network"
    project_id = "${module.proj_transit_us.proj_id_output}"
    network_name = "transit-us-vpc"
    routing_mode = "REGIONAL"

    subnets = [
        {
            subnet_name     = "subnet-01"
            subnet_ip       = "${cidrsubnet(var.transit-us-vpc-primarycidr, 2, 0)}"
            subnet_region   = "us-east1"
        }
    ]
}
