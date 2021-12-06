terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

locals {
  module_version = "1"
  module_name    = "cluster"

  tags = module.tags.tags_list
}

module "tags" {
  source = "../tags"

  module_name    = local.module_name
  module_version = local.module_version
  project        = var.project
}