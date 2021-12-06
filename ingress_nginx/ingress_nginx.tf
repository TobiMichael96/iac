resource "kubernetes_namespace" "ingress_nginx" {
  metadata {
    name = var.namespace
  }

  lifecycle {
    ignore_changes = [
      metadata[0].labels,
    ]
  }
}

resource "helm_release" "ingress_nginx" {
  depends_on = [kubernetes_namespace.ingress_nginx]

  chart      = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  name       = "ingress-nginx"
  namespace  = var.namespace

  values = [
    <<EOT
controller:
  replicaCount: 1
  config:
    enable-modsecurity: "true"
    enable-owasp-modsecurity-crs: "true"
    server-snippet: |
      error_page 401 495 496 @json_401;
      error_page 403 @json_403;

      location @json_401 {
        internal;
        default_type application/json;
        return 401 '{"timestamp":"$time_iso8601","status":401,"error":"Unauthorized","path":"$uri"}';
      }
      location @json_403 {
        internal;
        default_type application/json;
        return 403 '{"timestamp":"$time_iso8601","status":403,"error":"Forbidden","path":"$uri"}';
      }
  service:
    type: "LoadBalancer"
    annotations:
      kubernetes.digitalocean.com/load-balancer-id: "${var.balancer_id}"
EOT
  ]
}