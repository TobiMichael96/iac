project = "tmc"

do_region              = "fra1"
cluster_version_prefix = "1.21."
default_node_size      = "s-2vcpu-4gb"

flux_config_repo = "https://github.com/TobiMichael96/kube-config"
flux_git_branch  = "cloud"

domains = ["tme-cloud.de", "tobiasmichael.de", "tmem.de"]

tags = [
  "owner:tobias-effner",
  "createdby:terraform"
]