# IaC

This is the IaC code for my kubernetes setup on Digital Ocean (and S3 on AWS).

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.16.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_balancer"></a> [balancer](#module\_balancer) | ./balancer | n/a |
| <a name="module_cert-manager"></a> [cert-manager](#module\_cert-manager) | ./cert_manager | n/a |
| <a name="module_cluster"></a> [cluster](#module\_cluster) | ./cluster | n/a |
| <a name="module_dns"></a> [dns](#module\_dns) | ./dns | n/a |
| <a name="module_external_dns"></a> [external\_dns](#module\_external\_dns) | ./external_dns | n/a |
| <a name="module_flux"></a> [flux](#module\_flux) | ./flux | n/a |
| <a name="module_ingress_nginx"></a> [ingress\_nginx](#module\_ingress\_nginx) | ./ingress_nginx | n/a |
| <a name="module_s3"></a> [s3](#module\_s3) | ./s3 | n/a |

## Resources

| Name | Type |
|------|------|
| [digitalocean_project_resources.tmc](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project_resources) | resource |
| [digitalocean_kubernetes_cluster.kubernetes](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_cluster) | data source |
| [digitalocean_project.tmc](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_access_key"></a> [aws\_access\_key](#input\_aws\_access\_key) | AWS access key. | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region. | `string` | `"eu-central-1"` | no |
| <a name="input_aws_secret_key"></a> [aws\_secret\_key](#input\_aws\_secret\_key) | AWS access key. | `string` | n/a | yes |
| <a name="input_cluster_version_prefix"></a> [cluster\_version\_prefix](#input\_cluster\_version\_prefix) | The version prefix of the kubernetes cluster to create. | `string` | n/a | yes |
| <a name="input_contact_mail"></a> [contact\_mail](#input\_contact\_mail) | Contact mail for cert manager. | `string` | n/a | yes |
| <a name="input_default_node_size"></a> [default\_node\_size](#input\_default\_node\_size) | The default digital ocean node slug for each node in the default pool | `string` | n/a | yes |
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | The API token from your Digital Ocean control panel. | `string` | n/a | yes |
| <a name="input_do_region"></a> [do\_region](#input\_do\_region) | The digital ocean region slug for where to create resources. | `string` | `"fra1"` | no |
| <a name="input_domains"></a> [domains](#input\_domains) | List of domains. | `list(string)` | n/a | yes |
| <a name="input_flux_config_repo"></a> [flux\_config\_repo](#input\_flux\_config\_repo) | The http url to the flux config git repo. | `string` | n/a | yes |
| <a name="input_flux_git_branch"></a> [flux\_git\_branch](#input\_flux\_git\_branch) | The git branch of the flux config. | `string` | n/a | yes |
| <a name="input_flux_git_password"></a> [flux\_git\_password](#input\_flux\_git\_password) | The flux config repo git token. | `string` | n/a | yes |
| <a name="input_flux_git_username"></a> [flux\_git\_username](#input\_flux\_git\_username) | The flux config repo git username. | `string` | n/a | yes |
| <a name="input_max_nodes"></a> [max\_nodes](#input\_max\_nodes) | The maximum number of nodes in the default pool | `number` | `3` | no |
| <a name="input_min_nodes"></a> [min\_nodes](#input\_min\_nodes) | The minimum number of nodes in the default pool | `number` | `1` | no |
| <a name="input_project"></a> [project](#input\_project) | Name prefix for all resources. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags. | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->