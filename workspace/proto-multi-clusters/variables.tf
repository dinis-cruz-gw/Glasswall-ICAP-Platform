variable "organisation" {
  description = "Metadata Organisation"
  type        = string
  default     = "gw"
}

variable "environment" {
  description = "Metadata Environment"
  type        = string
  default     = "proto"
}

variable "subscription_id" {
  description = "Subscription ID"
  type        = string
  default     = "b8177f86-515f-4bff-bd08-1b9535dbc31b"
}

variable "tenant_id" {
  description = "Tenant ID"
  type        = string
  default     = "7049e6a3-141d-463a-836b-1ba40d3ff653"
}

variable "project" {
  description = "Metadata Project"
  type        = string
  default     = "icap"
}

variable "azure_region_r1" {
  description = "Metadata Azure Region"
  type        = string
  default     = "northeurope"
}

variable "azure_region_r2" {
  description = "Metadata Azure Region"
  type        = string
  default     = "ukwest"
}
variable "cluster_address_space_r1" {
  description = "Network CIDR"
  type        = list(string)
  default     = ["182.16.0.0/12", "192.167.0.0/16"]
}

variable "cluster_address_space_r2" {
  description = "Network CIDR"
  type        = list(string)
  default     = ["182.32.0.0/12", "192.169.0.0/16"]
}

variable "cluster_subnet_cidr_r1" {
  description = "Subnet CIDR"
  type        = list(string)
  default     = ["182.30.0.0/16"]

}

variable "cluster_subnet_cidr_r2" {
  description = "Subnet CIDR"
  type        = list(string)
  default     = ["182.46.0.0/16"]
}

variable "cluster_subnet_prefix_r1" {
  description = "Subnet CIDR"
  type        = string
  default     = "182.30.3.0/24"
}

variable "cluster_subnet_prefix_r2" {
  description = "Subnet CIDR"
  type        = string
  default     = "182.46.2.0/24"
}

variable "public_port" {
  description = "Public Port"
  type        = string
  default     = 443
}

variable "backend_port" {
  description = "Backend Port"
  type        = string
  default     = 32323
}

variable "os_publisher" {
  description = "OS Publisher"
  type        = string
  default     = "RedHat"
}

variable "os_offer" {
  description = "OS Offer"
  type        = string
  default     = "RHEL"
}

variable "os_sku" {
  description = "OS SKU"
  type        = string
  default     = "7-LVM"
}

variable "os_version" {
  description = "OS Version"
  type        = string
  default     = "latest"
}

variable "admin_cluster_apps" {
  description = "A list of apps"
  type = map(object({
    namespace = string
    catalogue_name = string
    template_name = string
  }))
}

variable "filedrop_cluster_apps" {
  description = "A list of apps"
  type = map(object({
    namespace = string
    catalogue_name = string
    template_name = string
  }))
}

variable "icap_cluster_apps" {
  description = "A list of apps"
  type = map(object({
    namespace = string
    catalogue_name = string
    template_name = string
  }))
  default = {
    adaptation = {
      namespace       = "icap-adaptation"
      catalogue_name  = "catalogue"
      template_name   = "icap-adaptation"
    },
    rabbitmq = {
      namespace       = "icap-rabbitmq"
      catalogue_name  = "catalogue"
      template_name   = "icap-rabbitmq"
    },
    system = {
      namespace       = "kube-system"
      catalogue_name  = "catalogue"
      template_name   = "systemclusterrole" 
    }
  }
}

variable "cluster_catalogs" {
  type = map(object({
    helm_charts_repo_url = string
    helm_charts_repo_branch = string
  }))
}