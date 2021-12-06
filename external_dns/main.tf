terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    helm = {
      source = "hashicorp/helm"
    }
  }
}

locals {
  module_version = "1"
  module_name    = "external_dns"

  tags = module.tags.tags
}

module "tags" {
  source = "../tags"

  module_name    = local.module_name
  module_version = local.module_version
  project        = var.project
}