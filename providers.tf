data "digitalocean_kubernetes_cluster" "kubernetes" {
  name = "${var.project}-cluster"

  depends_on = [module.cluster]
}

provider "kubernetes" {
  host                   = data.digitalocean_kubernetes_cluster.kubernetes.endpoint
  token                  = data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].token
  client_certificate     = base64decode(data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].client_certificate)
  client_key             = base64decode(data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].client_key)
  cluster_ca_certificate = base64decode(data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].cluster_ca_certificate)
}

provider "kubectl" {
  host                   = data.digitalocean_kubernetes_cluster.kubernetes.endpoint
  token                  = data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].token
  client_certificate     = base64decode(data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].client_certificate)
  client_key             = base64decode(data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].client_key)
  cluster_ca_certificate = base64decode(data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].cluster_ca_certificate)

  load_config_file = false
}

provider "helm" {
  kubernetes {
    host                   = data.digitalocean_kubernetes_cluster.kubernetes.endpoint
    token                  = data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].token
    client_certificate     = base64decode(data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].client_certificate)
    client_key             = base64decode(data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].client_key)
    cluster_ca_certificate = base64decode(data.digitalocean_kubernetes_cluster.kubernetes.kube_config[0].cluster_ca_certificate)
  }
}