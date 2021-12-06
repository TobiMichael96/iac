locals {
  module_version = "1"
  module_name    = "s3"

  tags = module.tags.tags
}

module "tags" {
  source = "../tags"

  module_name    = local.module_name
  module_version = local.module_version
  project        = var.project
}