terraform {
  required_providers {
    google = {
      version = "3.77.0"
    }
  }
}

provider "google" {
  credentials = var.credentials_file
  project = var.project
  region  = var.region
  zone    = var.zone
}

