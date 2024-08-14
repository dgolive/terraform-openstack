resource "openstack_compute_instance_v2" "instances-tf" {
  name            = "test-tf-${count.index}"
  region          = "RegionOne"
  image_id        = "3239fc6e-8e48-4e8e-8f8a-c38f202a1fcc"
  flavor_id       = "1"
  key_pair        = "homelab-key"
  security_groups = ["default", "SG-1"]
  count           = 2

  network {
    name = "internal_network"
  }
}


# resource "openstack_networking_floatingip_v2" "fip_pool" {
#   pool              = "ext_net"
# }


# resource "openstack_compute_floatingip_associate_v2" "fip_pool" {
#   floating_ip 	    = "${openstack_networking_floatingip_v2.fip_pool.address}"
#   instance_id 	    = "${openstack_compute_instance_v2.my_instance_tf[count.index]}"
#   fixed_ip          = "${openstack_compute_instance_v2.my_instance_tf.network.0.fixed_ip_v4}"
# }
