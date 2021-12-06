variable "project" {
  description = "Name prefix for all resources."
  type        = string
}

variable "region" {
  description = "The digital ocean region slug for where to create resources."
  type        = string
}

variable "tags" {
  description = "List of tags."
  type        = list(string)
  default     = []
}

variable "balancer_size" {
  description = "Size of the load balancer."
  default = "lb-small"
}

variable "balancer_algorithm" {
  description = "Algorithm of the load balancer."
  default = "round_robin"
}