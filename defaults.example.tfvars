project = "PROJECT"

do_region              = "fra1"
cluster_version_prefix = "1.21."
default_node_size      = "s-2vcpu-4gb"

flux_config_repo = "FLUX_CONFIG_REPO"
flux_git_branch  = "FLUX_CONFIG_BRANCH"

domains = ["example.de", "test.de"]

tags = [
  "owner:YOUR_NAME",
  "createdby:terraform"
]