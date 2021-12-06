variable "project" {
  description = "Project name."
}

variable "tags" {
  description = "List of tags."
  type        = list(string)
  default     = []
}

variable "balancer_id" {
  description = "ID of the load balancer."
}

variable "namespace" {
  description = "The ingress-nginx namespace."
  default     = "ingress-nginx"
  type        = string
}