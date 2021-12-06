output "balancer_id" {
  value = digitalocean_loadbalancer.load_balancer.id
}

output "balancer_urn" {
  value = digitalocean_loadbalancer.load_balancer.urn
}

output "balancer_ip" {
  value = digitalocean_loadbalancer.load_balancer.ip
}