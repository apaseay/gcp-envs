provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source       = "../../modules/network"
  network_name = "dev-network"
  project_id   = var.project_id
  region       = var.region
}

variable "project_id" {
  default = "terraform-envs-dev"
}

variable "region" {
  default = "us-central1"
}