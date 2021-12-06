<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.cert_manager](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubectl_manifest.certificates](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.cluster_issuer](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.issuer_secret](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubernetes_namespace.cert_manager](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_contact_mail"></a> [contact\_mail](#input\_contact\_mail) | Contact mail for cert manager. | `string` | n/a | yes |
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | The API token from your Digital Ocean control panel. | `string` | `""` | no |
| <a name="input_domains"></a> [domains](#input\_domains) | List of base domains. | `list(string)` | n/a | yes |
| <a name="input_nameservers"></a> [nameservers](#input\_nameservers) | List of nameservers. | `list(string)` | <pre>[<br>  "173.245.58.51",<br>  "1.1.1.1",<br>  "8.8.8.8"<br>]</pre> | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of cert-manager. | `string` | `"cert-manager"` | no |
| <a name="input_project"></a> [project](#input\_project) | Project name | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags. | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->