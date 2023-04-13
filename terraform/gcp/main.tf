variable "GCP_PROFILE" {}
variable "GCP_PROJECT_ID" {}
variable "GCP_REGION" {}
variable "PROJECT_NAME" {}

provider "google" {
  credentials = file("~/.gcp/credentials/${var.GCP_PROFILE}.json")
  project     = var.GCP_PROJECT_ID
  region      = var.GCP_REGION
}

resource "google_compute_network" "primary" {
  name = "${var.PROJECT_NAME}-network"
}

resource "google_container_cluster" "primary" {
  name             = "${var.PROJECT_NAME}-cluster"
  location         = var.GCP_REGION
  network          = google_compute_network.primary.name

  // https://github.com/hashicorp/terraform-provider-google/issues/10782#issuecomment-1024488630
  ip_allocation_policy {
  }
  enable_autopilot = true
}
