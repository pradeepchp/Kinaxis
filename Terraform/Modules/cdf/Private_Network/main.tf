module "peering" {
  source                     = "./network_pear"
  prefix                     = "data-fusion-peering"
  local_network              = "projects/${var.project_id}/global/networks/${var.network}"
  peer_network               = "projects/${var.tenant_project}/global/networks/${var.region}-${var.instance}"

  export_local_custom_routes = true
  export_peer_custom_routes  = true
}