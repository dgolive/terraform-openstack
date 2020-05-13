resource "openstack_compute_instance_v2" "my_instance_tf" {
  name              = "instance_tf"
  region            = "RegionOne"
  image_id          = "196c5baa-0787-41df-afb0-0a37ec1d01c6"
  flavor_id         = "c5fb4377-cd2b-405e-9a6a-8eabd0a4020e"
  key_pair          = "keypair"
  security_groups   = ["default"]

  network {
    name = "admin_net"
  }
}


resource "openstack_networking_floatingip_v2" "fip_pool" {
  pool              = "ext_net"
}


resource "openstack_compute_floatingip_associate_v2" "fip_pool" {
  floating_ip       = "${openstack_networking_floatingip_v2.fip_pool.address}"
  instance_id       = "${openstack_compute_instance_v2.my_instance_tf.id}"
  fixed_ip          = "${openstack_compute_instance_v2.my_instance_tf.network.0.fixed_ip_v4}"
}

