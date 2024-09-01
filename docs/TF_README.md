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
| [google_storage_bucket.hello-world-app-data](https://registry.terraform.io/providers/hashicorp/google/6.0.1/docs/resources/storage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name_app_data"></a> [bucket\_name\_app\_data](#input\_bucket\_name\_app\_data) | Name of GCS bucket, to store app data. | `string` | n/a | yes |
| <a name="input_force_destroy_buckets"></a> [force\_destroy\_buckets](#input\_force\_destroy\_buckets) | When true, all buckets can be force destroyed (all contents). | `bool` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Label to assign to GCP resources. | `map(string)` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | GCP project ID. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | GCP region. | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | GCP zone. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
