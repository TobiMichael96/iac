locals {
  tags_list = concat([
    "module-version:${var.module_version}",
    "project:${var.project}",
    "module-name:${var.module_name}"
  ], var.tags)

  tags_map = { tags = local.tags_list }
}