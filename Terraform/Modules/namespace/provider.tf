terraform {
  required_version = ">= 0.13"
  required_providers {

    google = {
      source  = "hashicorp/google"
      version = ">= 3.53, < 5.0"
    }
    cdap = {
      source  = "GoogleCloudPlatform/cdap"
      version = "~> 0.10"
    }

  }

  provider_meta "google" {
    module_name = "blueprints/terraform/terraform-google-data-fusion:namespace/v2.0.0"
  }

}