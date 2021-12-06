variable "project" {
  description = "Name prefix for all resources."
  type        = string
}

variable "region" {
  description = "The digital ocean region slug for where to create resources."
  type        = string
}

variable "cluster_version_prefix" {
  description = "The version prefix of the kubernetes cluster to create."
  type        = string
}

variable "min_nodes" {
  description = "The minimum number of nodes in the default pool."
  type        = number
}

variable "max_nodes" {
  description = "The maximum number of nodes in the default pool."
  type        = number
}

variable "default_node_size" {
  description = "The default digital ocean node slug for each node in the default pool."
  type        = string
}

variable "tags" {
  description = "List of tags."
  type        = list(string)
  default     = []
}