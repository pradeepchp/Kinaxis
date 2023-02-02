terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.48.0"
    }
  }
}

provider "google" {
  project     = var.project-id
  region      = var.region
  credentials = file("/Users/marc27/kinaxis/kinaxis-service2-88d97b3516ef.json")
}