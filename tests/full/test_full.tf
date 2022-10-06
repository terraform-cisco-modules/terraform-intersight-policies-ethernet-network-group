terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">=1.0.32"
    }
  }
}

# Setup provider, variables and outputs
provider "intersight" {
  apikey    = var.intersight_keyid
  secretkey = file(var.intersight_secretkeyfile)
  endpoint  = var.intersight_endpoint
}

variable "intersight_keyid" {}
variable "intersight_secretkeyfile" {}
variable "intersight_endpoint" {
  default = "intersight.com"
}
variable "name" {}

output "moid" {
  value = module.main.moid
}

# This is the module under test
module "main" {
  source        = "../.."
  allowed_vlans = "1-5,10-99"
  description   = "${var.name} Ethernet Network Group Policy."
  name          = var.name
  organization  = "terratest"
  native_vlan   = 1
}
