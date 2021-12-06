<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_flux"></a> [flux](#provider\_flux) | n/a |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubectl_manifest.install](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.sync](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubernetes_namespace.flux_system](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_secret.main](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [flux_install.main](https://registry.terraform.io/providers/fluxcd/flux/latest/docs/data-sources/install) | data source |
| [flux_sync.main](https://registry.terraform.io/providers/fluxcd/flux/latest/docs/data-sources/sync) | data source |
| [kubectl_file_documents.install](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/data-sources/file_documents) | data source |
| [kubectl_file_documents.sync](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/data-sources/file_documents) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_components_extra"></a> [components\_extra](#input\_components\_extra) | Extra components for flux. | `list(string)` | `[]` | no |
| <a name="input_flux_config_repo"></a> [flux\_config\_repo](#input\_flux\_config\_repo) | The http url to the flux config git repo. | `string` | n/a | yes |
| <a name="input_flux_git_branch"></a> [flux\_git\_branch](#input\_flux\_git\_branch) | The git branch of the flux config. | `string` | n/a | yes |
| <a name="input_flux_git_password"></a> [flux\_git\_password](#input\_flux\_git\_password) | The flux config repo git token. | `string` | n/a | yes |
| <a name="input_flux_git_username"></a> [flux\_git\_username](#input\_flux\_git\_username) | The flux config repo git username. | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Name prefix for all resources. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags. | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->