variable "project" {
  description = "Name prefix for all resources."
  type        = string
}

variable "tags" {
  description = "List of tags."
  type        = list(string)
  default     = []
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

variable "components_extra" {
  description = "Extra components for flux."
  type        = list(string)
  default     = []
}
