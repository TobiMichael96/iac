<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_loadbalancer.load_balancer](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/loadbalancer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_balancer_algorithm"></a> [balancer\_algorithm](#input\_balancer\_algorithm) | Algorithm of the load balancer. | `string` | `"round_robin"` | no |
| <a name="input_balancer_size"></a> [balancer\_size](#input\_balancer\_size) | Size of the load balancer. | `string` | `"lb-small"` | no |
| <a name="input_project"></a> [project](#input\_project) | Name prefix for all resources. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The digital ocean region slug for where to create resources. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_balancer_id"></a> [balancer\_id](#output\_balancer\_id) | n/a |
| <a name="output_balancer_ip"></a> [balancer\_ip](#output\_balancer\_ip) | n/a |
| <a name="output_balancer_urn"></a> [balancer\_urn](#output\_balancer\_urn) | n/a |
<!-- END_TF_DOCS -->