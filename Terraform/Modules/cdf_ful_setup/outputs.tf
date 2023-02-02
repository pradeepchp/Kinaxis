output "instance" {
  value       = google_data_fusion_instance.enterprise_instance
  description = "The created CDF instance"
}

locals {
  tenant_project_re = "cloud-datafusion-management-sa@([\\w-]+).iam.gserviceaccount.com"
}

output "tenant_project" {
  value       = regex(local.tenant_project_re, google_data_fusion_instance.enterprise_instance.service_account)[0]
  description = "The Google managed tenant project ID in which the instance will run its jobs"
}