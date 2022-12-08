## VPC
#data "google_compute_network" "vpc" {
#   name                    = "default"
#   project = var.project_id
##  auto_create_subnetworks = "false"
#}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.gke_cluster_name}-subnet"
  region        = var.region
  network       = var.test-cluster-network #data.google_compute_network.vpc.name
  ip_cidr_range = var.test-cluster-ip-cidr
}
