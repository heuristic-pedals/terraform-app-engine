<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.9.5, <2 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 6.0.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 6.0.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_app_engine_application.app](https://registry.terraform.io/providers/hashicorp/google/6.0.1/docs/resources/app_engine_application) | resource |
| [google_app_engine_standard_app_version.gae_hello_world](https://registry.terraform.io/providers/hashicorp/google/6.0.1/docs/resources/app_engine_standard_app_version) | resource |
| [google_project_iam_member.gae_api](https://registry.terraform.io/providers/hashicorp/google/6.0.1/docs/resources/project_iam_member) | resource |
| [google_project_iam_member.storage_viewer](https://registry.terraform.io/providers/hashicorp/google/6.0.1/docs/resources/project_iam_member) | resource |
| [google_service_account.app_service_account](https://registry.terraform.io/providers/hashicorp/google/6.0.1/docs/resources/service_account) | resource |
| [google_storage_bucket.hello-world-app-data](https://registry.terraform.io/providers/hashicorp/google/6.0.1/docs/resources/storage_bucket) | resource |
| [google_storage_bucket_object.app_object](https://registry.terraform.io/providers/hashicorp/google/6.0.1/docs/resources/storage_bucket_object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_service"></a> [app\_service](#input\_app\_service) | Application GAE service name. | `string` | n/a | yes |
| <a name="input_app_service_account_description"></a> [app\_service\_account\_description](#input\_app\_service\_account\_description) | Service account description for application. | `string` | n/a | yes |
| <a name="input_app_service_account_display_name"></a> [app\_service\_account\_display\_name](#input\_app\_service\_account\_display\_name) | Service account display name for application. | `string` | n/a | yes |
| <a name="input_app_service_account_id"></a> [app\_service\_account\_id](#input\_app\_service\_account\_id) | Service account id for application. | `string` | n/a | yes |
| <a name="input_app_version"></a> [app\_version](#input\_app\_version) | Application version. | `string` | n/a | yes |
| <a name="input_bucket_name_app_data"></a> [bucket\_name\_app\_data](#input\_bucket\_name\_app\_data) | Name of GCS bucket, to store app data. | `string` | n/a | yes |
| <a name="input_bucket_source_zip_name"></a> [bucket\_source\_zip\_name](#input\_bucket\_source\_zip\_name) | Path to source code zip in GCP bucket | `string` | n/a | yes |
| <a name="input_force_destroy_buckets"></a> [force\_destroy\_buckets](#input\_force\_destroy\_buckets) | When true, all buckets can be force destroyed (all contents). | `bool` | n/a | yes |
| <a name="input_idle_timeout"></a> [idle\_timeout](#input\_idle\_timeout) | Timeout, in seconds, before instances shutdown when idle. | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Label to assign to GCP resources. | `map(string)` | n/a | yes |
| <a name="input_max_instances"></a> [max\_instances](#input\_max\_instances) | Maximum number of GAE instances. | `number` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | Application port | `number` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | GCP project ID. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | GCP region. | `string` | n/a | yes |
| <a name="input_source_zip"></a> [source\_zip](#input\_source\_zip) | Source files in .zip archive | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | GCP zone. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
