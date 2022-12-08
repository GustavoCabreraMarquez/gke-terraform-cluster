resource "google_container_cluster" "primary" {
  name                     = var.gke_cluster_name
  location                 = var.test-cluster-location
  remove_default_node_pool = true
  min_master_version       = var.control-plane-version
  initial_node_count       = 1
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "${var.gke_cluster_name}-node-pool"
  location   = var.test-cluster-location
  cluster    = google_container_cluster.primary.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = var.instance-type
  

    #   # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    #   service_account = google_service_account.default.email
    #   oauth_scopes    = [
    #     "https://www.googleapis.com/auth/cloud-platform"
    #   ]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}