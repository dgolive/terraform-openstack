# Define required providers
terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}

provider "vault" {
  address = "http://vault.myhomelab"
  # for token use: export VAULT_TOKEN="s.1234567890"
}

data "vault_generic_secret" "openstack_credentials" {
  path = "secret/openstack/config" # configuracao sem "data" no path
}

provider "openstack" {
  auth_url    = "http://192.168.15.20:5000/v3"
  region      = "RegionOne"
  tenant_name = "admin"
  user_name   = data.vault_generic_secret.openstack_credentials.data["username"]
  password    = data.vault_generic_secret.openstack_credentials.data["password"]
}


