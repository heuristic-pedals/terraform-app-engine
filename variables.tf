# project configuration variables
variable "project_id" {
  description = "GCP project ID."
  type        = string
  nullable    = false
}
variable "region" {
  description = "GCP region."
  type        = string
  nullable    = false
}
variable "zone" {
  description = "GCP zone."
  type        = string
  nullable    = false
}
variable "labels" {
  description = "Label to assign to GCP resources."
  type        = map(string)
  nullable    = false
}

# bucket configuration variables
variable "bucket_name_app_data" {
  description = "Name of GCS bucket, to store app data."
  type        = string
  nullable    = false
}
variable "force_destroy_buckets" {
  description = "When true, all buckets can be force destroyed (all contents)."
  type        = bool
  nullable    = false
}
