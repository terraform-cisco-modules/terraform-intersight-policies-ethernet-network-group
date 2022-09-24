module "ethernet_network_group_policy" {
  source  = "terraform-cisco-modules/policies-ethernet-network-group/intersight"
  version = ">= 1.0.1"

  allowed_vlans = ["1-5,10-99"]
  description   = "default Ethernet Network Group Policy."
  name          = "default"
  native_vlan   = 1
  organization  = "default"
}
