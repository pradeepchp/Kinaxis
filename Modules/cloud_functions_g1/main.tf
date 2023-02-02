resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.region
}

resource "google_storage_bucket_object" "archive" {
  name   = var.object_name
  bucket = google_storage_bucket.bucket.name
  source = var.src_obj_path
}

resource "google_cloudfunctions_function" "function" {
  name        = var.function_name
  description = var.funtion_description
  runtime     = var.runtime

  available_memory_mb          = 128
  source_archive_bucket        = google_storage_bucket.bucket.name
  source_archive_object        = google_storage_bucket_object.archive.name
  timeout                      = 60
  entry_point                  = var.function_entry_point
  labels = {
    my-label = "my-label-value"
  }
  event_trigger {
    event_type = "google.storage.object.finalize"
    resource = google_storage_bucket.bucket.name
  }
}

