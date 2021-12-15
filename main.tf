terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    aws = {
      source = "hashicorp/aws"
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
    helm = {
      source = "hashicorp/helm"
    }
  }
}

terraform {
  backend "s3" {
  }
}

provider "digitalocean" {
  token = var.digitalocean_token
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

//data "digitalocean_project" "tmc" {
//  name = "tmc"
//}
//
//resource "digitalocean_project_resources" "tmc" {
//  project   = data.digitalocean_project.tmc.id
//  resources = concat(module.dns.domain_urns)
//}
//
//module "cluster" {
//  source = "./cluster"
//
//  project = var.project
//  region  = var.do_region
//
//  cluster_version_prefix = var.cluster_version_prefix
//  default_node_size      = var.default_node_size
//  min_nodes              = var.min_nodes
//  max_nodes              = var.max_nodes
//}
//
//module "dns" {
//  source = "./dns"
//
//  project = var.project
//
//  domains = var.domains
//}
//
//module "balancer" {
//  source = "./balancer"
//
//  project = var.project
//  region  = var.do_region
//}
//
//module "flux" {
//  source = "./flux"
//
//  project = var.project
//
//  flux_config_repo  = var.flux_config_repo
//  flux_git_branch   = var.flux_git_branch
//  flux_git_password = var.flux_git_password
//  flux_git_username = var.flux_git_username
//}
//
//module "cert-manager" {
//  source = "./cert_manager"
//
//  project = var.project
//
//  # digitalocean_token = var.digitalocean_token
//  contact_mail = var.contact_mail
//  domains      = [] # var.domains
//
//  depends_on = [module.cluster]
//}
//
//module "ingress_nginx" {
//  source = "./ingress_nginx"
//
//  project = var.project
//
//  balancer_id = module.balancer.balancer_id
//
//  depends_on = [module.cluster]
//}
//
//module "external_dns" {
//  source = "./external_dns"
//
//  project = var.project
//
//  digitalocean_token = var.digitalocean_token
//
//  depends_on = [module.cluster]
//}

module "s3_data" {
  source = "./s3"

  project = var.project
  region  = var.aws_region

  usage = "data"
}
