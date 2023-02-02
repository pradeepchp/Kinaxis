resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.location
  project       = var.project-id
  force_destroy = true
  uniform_bucket_level_access = true
  storage_class = var.storage-type
  #public_access_prevention = "enforced" # enable or disable public access


/*
# the bucket and its objects will be deleted if they are not accessed for 7 days
  lifecycle_rule {
    condition {
      age = 7
      is_live = false
      num_newer_versions = 0
    }
    action {
      type = "Delete"
    }
  }
*/

/*
# Log retention policy for log bucket
  lifecycle_rule {
    action {
      type = "SetRetentionPolicy"
      retention_policy {
        age = 30
        is_locked = false
      }
    }
    condition {
      age = 7
      is_live = true
      num_newer_versions = 0
    }
  }
*/
}
