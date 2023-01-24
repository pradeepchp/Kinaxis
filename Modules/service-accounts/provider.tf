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
  credentials = file("/Users/pradeepchc/Desktop/KInaxis_Terraform/kinaxis-service1-510a57814007.json")
}