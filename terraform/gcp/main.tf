variable "gcp_credential_file" {}
variable "gcp_project_id" {}
variable "gcp_region" {}
variable "project_name" {}

provider "google" {
  credentials = file(var.gcp_credential_file)
  project     = var.gcp_project_id
  region      = var.gcp_region
}

resource "google_compute_network" "primary" {
  name = "${var.project_name}-network"
}

resource "google_container_cluster" "primary" {
  name             = "${var.project_name}-cluster"
  location         = var.gcp_region
  network          = google_compute_network.primary.name

  // https://github.com/hashicorp/terraform-provider-google/issues/10782#issuecomment-1024488630
  ip_allocation_policy {
  }
  enable_autopilot = true
}
