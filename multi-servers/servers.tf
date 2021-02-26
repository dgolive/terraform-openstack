resource "openstack_compute_instance_v2" "k8s_nodes" {
  name              = "k8s_nodes"
  region            = "RegionOne"
  image_id          = "dec159c8-b3a0-4c0a-9174-0e1fa4b264ac"
  flavor_id         = "e95838ed-0920-4d33-a662-3ba465bde408"
  key_pair  	    = "cencosud-danilo"
  security_groups   = ["default"]
  count		    = 3

  network {
    name 	    = "admin_net2"
  }
}


resource "openstack_networking_floatingip_v2" "fip_pool" {
  pool              = "ext_net"
}

   
resource "openstack_compute_floatingip_associate_v2" "fip_pool" {
  floating_ip 	    = "${openstack_networking_floatingip_v2.fip_pool.address}"
  instance_id 	    = "${openstack_compute_instance_v2.my_instance_tf.[count.index]}"
  fixed_ip          = "${openstack_compute_instance_v2.my_instance_tf.network.0.fixed_ip_v4}"
}
