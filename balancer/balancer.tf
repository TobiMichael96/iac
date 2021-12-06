resource "digitalocean_loadbalancer" "load_balancer" {
  name   = "${var.project}-lb"
  region = var.region
  size = var.balancer_size
  algorithm = var.balancer_algorithm

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  lifecycle {
    ignore_changes = [
      forwarding_rule,
      name,
    ]
  }
}