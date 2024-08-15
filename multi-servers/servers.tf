data "openstack_images_image_v2" "cirros" {
  name = var.openstack_image_name
}

data "openstack_compute_flavor_v2" "c4m16d40" {
  name = var.openstack_flavor_name
}

resource "openstack_compute_instance_v2" "instances-tf" {
  count           = var.count_instances
  name            = "test-tf-${count.index}"
  region          = var.openstack_region
  image_id        = data.openstack_images_image_v2.cirros.id
  flavor_id       = data.openstack_compute_flavor_v2.c4m16d40.id
  key_pair        = var.openstack_keypair_name
  security_groups = var.openstack_security_group_name

  network {
    name = var.openstack_network_name
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
