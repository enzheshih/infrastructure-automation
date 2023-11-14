module "gke_gc0_asia-east1" {
  providers = {
    kubernetes = kubernetes.gke_gc0_asia-east1
  }

  source = "github.com/kbst/terraform-kubestack//google/cluster?ref=v0.19.1-beta.0"

  configuration = {
    apps = {
      base_domain                = var.base_domain
      cluster_initial_node_count = 1
      cluster_machine_type       = "e2-medium"
      cluster_max_node_count     = 3
      cluster_min_master_version = "1.25"
      cluster_min_node_count     = 1
      cluster_node_locations     = "asia-east1-a,asia-east1-b,asia-east1-c"
      name_prefix                = "gc0"
      project_id                 = "hybrid-sunbeam-405107"
      region                     = "asia-east1"
    }
    ops = {}
  }
}
