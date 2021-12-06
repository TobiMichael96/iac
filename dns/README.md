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
| [digitalocean_domain.default](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/domain) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_ip"></a> [default\_ip](#input\_default\_ip) | Default IP address. | `any` | `null` | no |
| <a name="input_domains"></a> [domains](#input\_domains) | List of domains. | `list(string)` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Name prefix for all resources. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain_urns"></a> [domain\_urns](#output\_domain\_urns) | n/a |
<!-- END_TF_DOCS -->