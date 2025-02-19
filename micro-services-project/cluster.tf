resource "google_container_cluster" "my-cluster" {

  name = "my-cluster"

  location = "us-central1-a"

  initial_node_count = 3 

  node_config {

    machine_type = "e2-medium" 

    }
  deletion_protection = false

  remove_default_node_pool = true

}

resource "google_container_node_pool" "my-node-pool" {

  name = "my-node-pool"

  location = "us-central1-a"

  cluster = google_container_cluster.my-cluster.name

  node_count = 3

  node_config {

    machine_type = "e2-medium" # Type de machine pour les nœuds

    preemptible = true

}
}
