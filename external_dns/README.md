<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.external_dns](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.external_dns](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | Digital Ocean API Token. | `any` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The ingress-nginx namespace. | `string` | `"external-dns"` | no |
| <a name="input_project"></a> [project](#input\_project) | Project name. | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags. | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->