variable "network_name" {}
variable "project_id" {}
variable "region" {}

resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = true
  project                 = var.project_id
}