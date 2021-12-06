variable "project" {
  description = "Name prefix for all resources."
  type        = string
}

variable "domains" {
  description = "List of domains."
  type        = list(string)
}

variable "default_ip" {
  description = "Default IP address."
  default = null
}

variable "tags" {
  description = "List of tags."
  type        = list(string)
  default     = []
}