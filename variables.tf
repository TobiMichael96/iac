variable "digitalocean_token" {
  description = "The API token from your Digital Ocean control panel."
  type        = string
  sensitive   = true
}

variable "do_region" {
  description = "The digital ocean region slug for where to create resources."
  type        = string
  default     = "fra1"
}

variable "aws_region" {
  description = "AWS region."
  default     = "eu-central-1"
  sensitive   = true
}

variable "aws_access_key" {
  description = "AWS access key."
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS access key."
  type        = string
  sensitive   = true
}

variable "contact_mail" {
  description = "Contact mail for cert manager."
  type        = string
}

variable "project" {
  description = "Name prefix for all resources."
  type        = string
}

variable "cluster_version_prefix" {
  description = "The version prefix of the kubernetes cluster to create."
  type        = string
}

variable "domains" {
  description = "List of domains."
  type        = list(string)
}

variable "min_nodes" {
  description = "The minimum number of nodes in the default pool"
  type        = number
  default     = 1
}

variable "max_nodes" {
  description = "The maximum number of nodes in the default pool"
  type        = number
  default     = 3
}

variable "default_node_size" {
  description = "The default digital ocean node slug for each node in the default pool"
  type        = string
}

variable "flux_config_repo" {
  description = "The http url to the flux config git repo."
  type        = string
}

variable "flux_git_branch" {
  description = "The git branch of the flux config."
  type        = string
}

variable "flux_git_username" {
  description = "The flux config repo git username."
  type        = string
}

variable "flux_git_password" {
  description = "The flux config repo git token."
  type        = string
}

variable "tags" {
  description = "List of tags."
  type        = list(string)
  default     = []
}