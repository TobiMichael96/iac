variable "project" {
  description = "Name prefix for all resources."
  type        = string
}

variable "region" {
  description = "The aws region for where to create resources."
  type        = string
}

variable "usage" {
  description = "Optional bucket usage"
  default     = ""
  type        = string
}

variable "tags" {
  description = "List of tags."
  type        = list(string)
  default     = []
}