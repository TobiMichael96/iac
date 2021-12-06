resource "digitalocean_domain" "default" {
  count      = length(var.domains)
  name       = var.domains[count.index]
  ip_address = var.default_ip
}
