data "google_client_config" "current" {}

provider "cdap" {
  host  = var.cdfname
  token = data.google_client_config.current.access_token
}

module "custom_dataproc" {
  source  = "terraform-google-modules/data-fusion/google//modules/dataproc_profile"
  version = "~> 0.1"

  name   = var.computeprofile
  label  = "Custom Dataproc Profile"
  network         = "example-network"
  subnet          = "example-subnetwork"
  service_account = "example-sa"
  gcs_bucket      = "example-bucket"
}