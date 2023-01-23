resource "google_data_fusion_instance" "enterprise_instance" {
  name                          = var.instance_name
  description                   = var.description
  display_name                  = var.display_name
  region                        = var.region
  type                          = var.cdf_version
  enable_stackdriver_logging    = true
  enable_stackdriver_monitoring = true
  private_instance              = true
  version                       = var.instance_version
  dataproc_service_account      = var.default_service_account
  enable_rbac = true

  labels = {
    example_key = var.example_key
  }

  network_config {
    network       = var.cdf_network
    ip_allocation = var.cdf_ip_range
  }
}

