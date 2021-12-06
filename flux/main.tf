terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    tls = {
      source = "hashicorp/tls"
    }
    kubectl = {
      source = "gavinbunney/kubectl"
    }
    flux = {
      source = "fluxcd/flux"
    }
  }
}

locals {
  module_version = "1"
  module_name    = "flux"

  tags = module.tags.tags
}

module "tags" {
  source = "../tags"

  module_name    = local.module_name
  module_version = local.module_version
  project        = var.project
}

