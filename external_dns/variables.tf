variable "project" {
  description = "Project name."
}

variable "tags" {
  description = "List of tags."
  type        = list(string)
  default     = []
}

variable "digitalocean_token" {
  description = "Digital Ocean API Token."
  sensitive   = true
}

variable "namespace" {
  description = "The ingress-nginx namespace."
  default     = "external-dns"
  type        = string
}