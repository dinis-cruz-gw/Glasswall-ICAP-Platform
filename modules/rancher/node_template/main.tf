/*
provider "rancher2" {
  alias = "admin"
  api_url = var.rancher_admin_url
  token_key = var.rancher_admin_token
  insecure = true
}
*/
resource "rancher2_node_template" "node_template" {
  provider    = rancher2.admin
  name = "${var.service_name}-node-template"
  cloud_credential_id       = var.cloud_credentials_id
  engine_install_url        = var.docker_url
    azure_config {
      availability_set      = var.service_name
      custom_data           = var.custom_data
      disk_size             = var.node_disk_size
      image                 = var.node_image
      location              = var.azure_region
      open_port             = var.node_ports
      resource_group        = var.resource_group
      storage_type          = var.node_storage_type
      size                  = var.node_type
      use_private_ip        = true
      managed_disks         = true
      no_public_ip          = true
      vnet                  = var.cluster_virtual_machine_net
      subnet                = var.cluster_subnet_name
      subnet_prefix         = var.cluster_subnet_prefix
      fault_domain_count    = 2
      ssh_user              = "gwicap-user"
    }
}