# Project and Provider
openstack_auth_url    = "http://192.168.15.20:5000/v3"
openstack_region      = "RegionOne"
openstack_tenant_name = "admin"

openstack_project_id = "admin"
openstack_network_name = "internal_network"
openstack_subnet_cidr = "10.20.30.0/24"
openstack_external_network_name = "external_network"

# Instances
openstack_instance_name = "test2-tfvm-001"
count_instances = 2

# Network  
openstack_image_name = "cirros"
openstack_flavor_name = "c2m4d10"
openstack_keypair_name = "homelab-key"
openstack_security_group_name = ["default", "SG-1"]
