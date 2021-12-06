terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

locals {
  module_version = "1"
  module_name    = "balancer"
}