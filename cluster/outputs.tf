output "cluster_ip" {
  value = digitalocean_kubernetes_cluster.kubernetes.ipv4_address
}