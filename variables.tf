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

# service account variables
variable "app_service_account_id" {
  description = "Service account id for application."
  type        = string
  nullable    = false
}
variable "app_service_account_display_name" {
  description = "Service account display name for application."
  type        = string
  nullable    = false
}
variable "app_service_account_description" {
  description = "Service account description for application."
  type        = string
  nullable    = false
}

# app configuration
variable "app_version" {
  description = "Application version."
  type        = string
  nullable    = false
}
variable "app_service" {
  description = "Application GAE service name."
  type        = string
  nullable    = false
}
variable "max_instances" {
  description = "Maximum number of GAE instances."
  type        = number
  nullable    = false
}
variable "idle_timeout" {
  description = "Timeout, in seconds, before instances shutdown when idle."
  type        = string
  nullable    = false
}
variable "port" {
  description = "Application port"
  type        = number
  nullable    = false
}
variable "bucket_source_zip_name" {
  description = "Path to source code zip in GCP bucket"
  type        = string
  nullable    = false
}
variable "source_zip" {
  description = "Source files in .zip archive"
  type        = string
  nullable    = false
}
