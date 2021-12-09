variable "project" {
  description = "Project name"
}

variable "tags" {
  description = "List of tags."
  type        = list(string)
  default     = []
}

variable "namespace" {
  description = "Namespace of cert-manager."
  default     = "cert-manager"
  type        = string
}

variable "nameservers" {
  description = "List of nameservers."
  default = [
    "1.1.1.1",
    "8.8.8.8"
  ]
  type = list(string)
}

variable "digitalocean_token" {
  description = "The API token from your Digital Ocean control panel."
  default     = ""
  type        = string
  sensitive   = true
}

variable "contact_mail" {
  description = "Contact mail for cert manager."
  type        = string
}

variable "domains" {
  description = "List of base domains."
  type        = list(string)
}