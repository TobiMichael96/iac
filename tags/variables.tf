variable "project" {
  description = "Name prefix for all resources."
  type        = string
}

variable "module_version" {
  description = "Version of the module."
  type        = string
}

variable "module_name" {
  description = "Name of the module."
  type        = string
}

variable "tags" {
  description = "List of tags."
  type        = list(string)
  default     = []
}