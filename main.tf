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
