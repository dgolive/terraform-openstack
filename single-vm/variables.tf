# OpenStack Variables

# variable "openstack_username" {
#   description = "Username for OpenStack authentication"
#   type        = string
# }

# variable "openstack_password" {
#   description = "Password for OpenStack authentication"
#   type        = string
# }

variable "openstack_auth_url" {
  description = "Authentication URL for OpenStack"
  type        = string
}

variable "openstack_project_id" {
  description = "Project ID for OpenStack"
  type        = string
}

variable "openstack_region" {
  description = "Region for OpenStack resources"
  type        = string
}

variable "openstack_tenant_name" {
  description = "Tenant name for OpenStack"
  type        = string
}

variable "openstack_network_name" {
  description = "Name of the OpenStack network"
  type        = string
}

variable "openstack_subnet_cidr" {
  description = "CIDR block for the OpenStack subnet"
  type        = string
}

variable "openstack_external_network_name" {
  description = "Name of the OpenStack external network"
  type        = string
}

variable "openstack_image_name" {
  description = "Name of the OpenStack image"
  type        = string
}

variable "openstack_flavor_name" {
  description = "Name of the OpenStack flavor"
  type        = string
}

variable "openstack_keypair_name" {
  description = "Name of the OpenStack keypair"
  type        = string
}

variable "openstack_security_group_name" {
  description = "Name of the OpenStack security group"
  type        = list(string)
}

variable "openstack_instance_name" {
  description = "Name of the OpenStack instance"
  type        = string
}

variable "count_instances" {
  description = "Number of instances to create"
  type        = number
}