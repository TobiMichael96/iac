output "domain_urns" {
  value = digitalocean_domain.default.*.urn
}