# bucket to store app data
resource "google_storage_bucket" "hello-world-app-data" {
  name                        = var.bucket_name_app_data
  location                    = var.region
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true
  storage_class               = "STANDARD"
  force_destroy               = var.force_destroy_buckets
  labels                      = var.labels
  soft_delete_policy {
    retention_duration_seconds = 0
  }
}

# application service account
resource "google_service_account" "app_service_account" {
  account_id   = var.app_service_account_id
  display_name = var.app_service_account_display_name
  description  = var.app_service_account_description
}

# add network user role
resource "google_project_iam_member" "gae_api" {
  project = google_service_account.app_service_account.project
  role    = "roles/compute.networkUser"
  member  = "serviceAccount:${google_service_account.app_service_account.email}"
}

# add storage viewer role
resource "google_project_iam_member" "storage_viewer" {
  project = google_service_account.app_service_account.project
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.app_service_account.email}"
}
