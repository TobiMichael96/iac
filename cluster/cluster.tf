resource "digitalocean_kubernetes_cluster" "kubernetes" {
  name         = "${var.project}-cluster"
  region       = var.region
  auto_upgrade = true
  version      = data.digitalocean_kubernetes_versions.kubernetes.latest_version

  maintenance_policy {
    start_time = "04:00"
    day        = "sunday"
  }

  tags = local.tags

  node_pool {
    name       = "${var.project}-worker-pool"
    size       = var.default_node_size
    auto_scale = true
    min_nodes  = var.min_nodes
    max_nodes  = var.max_nodes

    tags = local.tags
  }
}

data "digitalocean_kubernetes_versions" "kubernetes" {
  version_prefix = var.cluster_version_prefix
}