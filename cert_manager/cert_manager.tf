resource "kubernetes_namespace" "cert_manager" {
  metadata {
    name = var.namespace
  }

  lifecycle {
    ignore_changes = [
      metadata[0].labels,
    ]
  }
}

resource "helm_release" "cert_manager" {
  chart      = "cert-manager"
  repository = "https://charts.jetstack.io"
  name       = "cert-manager"
  namespace  = var.namespace

  set {
    name  = "installCRDs"
    value = "true"
  }

  set {
    name  = "podDnsPolicy"
    value = "None"
  }

  set {
    name  = "podDnsConfig.nameservers"
    value = "{${join(",", var.nameservers)}}"
  }
}

resource "kubectl_manifest" "cluster_issuer" {
  yaml_body = templatefile("${path.module}/files/cluster_issuer.yaml",
    {
      contact_mail = var.contact_mail
  })

  depends_on = [kubernetes_namespace.cert_manager, kubectl_manifest.issuer_secret]
}

resource "kubectl_manifest" "issuer_secret" {
  count = var.digitalocean_token == "" ? 0 : 1
  yaml_body = sensitive(templatefile("${path.module}/files/secret.yaml",
    {
      do_token = base64encode(var.digitalocean_token)
  }))

  depends_on = [kubernetes_namespace.cert_manager]
}

resource "kubectl_manifest" "certificates" {
  count = length(var.domains)
  yaml_body = templatefile("${path.module}/files/certificate.yaml",
    {
      domain = var.domains[count.index]
  })

  depends_on = [kubernetes_namespace.cert_manager, kubectl_manifest.issuer_secret, kubectl_manifest.cluster_issuer]
}