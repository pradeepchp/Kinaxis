resource "google_data_fusion_instance" "enterprise_instance" {
  name                          = var.instance_name
  description                   = var.description
  display_name                  = var.display_name
  region                        = var.region
  type                          = var.instance_type
  enable_stackdriver_logging    = true
  enable_stackdriver_monitoring = true
  private_instance              = true
  version                       = var.cdf_version
  dataproc_service_account      = var.default_service_account
  enable_rbac                   = true

  labels = {
    example_key = var.example_key
  }

  network_config {
    network       = var.host_vpc_network
    ip_allocation = "${google_compute_global_address.private_ip_alloc.address}/${google_compute_global_address.private_ip_alloc.prefix_length}"
  }

  # Mark for testing to avoid service networking connection usage that is not cleaned up
  options = {
    prober_test_run = "true"
  }
}


resource "google_compute_global_address" "private_ip_alloc" {
  name          = var.datafusion_allocated_address
  address_type  = "INTERNAL"
  purpose       = "VPC_PEERING"
  prefix_length = 22
  project       = var.host_project
  network       = "shared-vpc-network"
}