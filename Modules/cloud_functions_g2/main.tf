resource "google_storage_bucket" "source-bucket" {
  name     = var.bucket_name
  location = var.region
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "object" {
  name   = var.object_name
  bucket = google_storage_bucket.source-bucket.name
  source = var.src_obj_path  # Add path to the zipped function source code
}

resource "google_cloudfunctions2_function" "function" {
  name = var.function_name
  location = var.region
  description = var.funtion_description

  build_config {
    runtime = var.runtime
    entry_point = var.function_entry_point  # Set the entry point
    source {
      storage_source {
        bucket = google_storage_bucket.source-bucket.name
        object = google_storage_bucket_object.object.name
      }
    }
  }

  service_config {
    max_instance_count  = 1
    available_memory    = "256M"
    timeout_seconds     = 60
  }
}

output "function_uri" {
  value = google_cloudfunctions2_function.function.service_config[0].uri
}