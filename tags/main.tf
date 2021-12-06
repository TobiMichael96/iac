locals {
  tags = concat([
    "module-version:${var.module_version}",
    "project:${var.project}",
    "module-name:${var.module_name}"
  ], var.tags)
}