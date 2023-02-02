data "google_client_config" "current" {}

provider "cdap" {
  host  = "https://designcdf-terraform-kinaxis-service1-dot-usc1.datafusion.googleusercontent.com/api/"
  token = data.google_client_config.current.access_token
}

resource "cdap_namespace" "namespace" {
  name = var.namespace_name
}
