#____________________________________________________________
#
# Collect the moid of the Ethernet Network Group Policy
#____________________________________________________________

output "moid" {
  description = "Ethernet Network Group (VLAN Group) Policy Managed Object ID (moid)."
  value       = intersight_fabric_eth_network_group_policy.ethernet_network_group.moid
}
