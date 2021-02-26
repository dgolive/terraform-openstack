provider "openstack" {
  auth_url 		= "http://172.18.181.8:5000/v2"
  project_domain_id     = "f1ceb8de28184e8cb578c8b699cc9fa5"
  region                = "RegionOne"
  tenant_name		= "admin"
  user_domain_name      = "admin_domain"
  user_name 		= "admin"
  password 		= "xxxxxxxx"
  tenant_id		= "005b1804ab0b4b3296e69bc2c3724ff0"
}
