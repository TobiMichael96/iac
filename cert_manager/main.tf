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
    tls = {
      source = "hashicorp/tls"
    }
    kubectl = {
      source = "gavinbunney/kubectl"
    }
  }
}

locals {
  module_version = "1"
  module_name    = "cert-manager"

  tags = module.tags.tags
}

module "tags" {
  source = "../tags"

  module_name    = local.module_name
  module_version = local.module_version
  project        = var.project
}

