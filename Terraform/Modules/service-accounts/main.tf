resource "google_service_account" "test-acc" {
  account_id   = "test-acc-sa2"
  display_name = "Example Service Account"
}
resource "google_project_iam_member" "test-acc" {
  project = var.project-id
  role    = "roles/viewer"
  member  = "serviceAccount:${google_service_account.test-acc.email}"
}
