output "tls_private_key" {
  value = module.rancher_server.tls_private_key
}

output "rancher_suffix" {
  value = var.suffix
}

output "public_key_openssh" {
  value = module.rancher_server.public_key_openssh
}

output "linux_vm_public_ips" {
  value = module.rancher_server.linux_vm_public_ips
}

output "git_server_public_ips" {
  value = module.rancher_server.git_server_public_ips
}

output "git_server_url" {
  value = "http://${trimsuffix(module.rancher_server.git_server_url, ".")}"
}

output "rancher_admin_token" {
  value = module.rancher_server.admin_token
}

output "rancher_api_url" {
  value = "https://${trimsuffix(module.rancher_server.rancher_api_url, ".")}"
}

output "rancher_internal_api_url" {
  value = "https://${trimsuffix(module.rancher_server.rancher_internal_api_url, ".")}"
}

output "rancher_internal_server_url" {
  value = trimsuffix(module.rancher_server.rancher_internal_api_url, ".")
}

output "rancher_server_url" {
  value = trimsuffix(module.rancher_server.rancher_api_url, ".")
}

output "rancher_token_id" {
  value = module.rancher_server.admin_token_id
}

output "rancher_user" {
  value = module.rancher_server.admin_user
}

output "rancher_password" {
  value = module.rancher_server.admin_password
}

output "resource_group" {
  value = module.rancher_server.rancher_resource_group
}

output "network" {
  value = module.rancher_server.rancher_network
}

output "subnet_name" {
  value = module.rancher_server.subnet_name
}

output "subnet_id" {
  value = module.rancher_server.subnet_id
}

output "region" {
  value = var.azure_region
}

output "network_id" {
  value = module.rancher_server.network_id
}

output "subnet_prefix" {
  value = module.rancher_server.subnet_prefix
}

output "rancher_server_version" {
  value = var.rancher_server_version
}

output "rancher_agent_version" {
  value = var.rancher_agent_version
}