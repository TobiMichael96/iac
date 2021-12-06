resource "kubernetes_namespace" "external_dns" {
  metadata {
    name = var.namespace
  }

  lifecycle {
    ignore_changes = [
      metadata[0].labels,
    ]
  }
}

resource "helm_release" "external_dns" {
  depends_on = [kubernetes_namespace.external_dns]

  chart      = "external-dns"
  repository = "https://charts.bitnami.com/bitnami"
  name       = "external-dns"
  namespace  = var.namespace

  values = [
    <<EOT
provider: "digitalocean"
digitalocean:
  apiToken: "${var.digitalocean_token}"
interval: "1m"
policy: sync # or upsert-only
EOT
  ]
}