# configure google cloud
provider "google" {
  credentials = "${file("~/account-auth.json")}"
  project = "cd-test-1300"
  region = "europe-west1-d"
}

# create cluster
resource "google_container_cluster" "primary" {
  name = "cd-test-cluster"
  zone = "europe-west1-d"
  initial_node_count = 3

  master_auth {
    username = "master"
    password = "secret"
  }

  node_config {
    machine_type = "f1-micro"
    disk_size_gb = "10"

    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]
  }
}
