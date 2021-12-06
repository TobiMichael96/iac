<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tags"></a> [tags](#module\_tags) | ../tags | n/a |

## Resources

| Name | Type |
|------|------|
| [digitalocean_kubernetes_cluster.kubernetes](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_kubernetes_versions.kubernetes](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_versions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_version_prefix"></a> [cluster\_version\_prefix](#input\_cluster\_version\_prefix) | The version prefix of the kubernetes cluster to create. | `string` | n/a | yes |
| <a name="input_default_node_size"></a> [default\_node\_size](#input\_default\_node\_size) | The default digital ocean node slug for each node in the default pool. | `string` | n/a | yes |
| <a name="input_max_nodes"></a> [max\_nodes](#input\_max\_nodes) | The maximum number of nodes in the default pool. | `number` | n/a | yes |
| <a name="input_min_nodes"></a> [min\_nodes](#input\_min\_nodes) | The minimum number of nodes in the default pool. | `number` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Name prefix for all resources. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The digital ocean region slug for where to create resources. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_ip"></a> [cluster\_ip](#output\_cluster\_ip) | n/a |
<!-- END_TF_DOCS -->