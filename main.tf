#____________________________________________________________
#
# Intersight Organization Data Source
# GUI Location: Settings > Settings > Organizations > {Name}
#____________________________________________________________

data "intersight_organization_organization" "org_moid" {
  name = var.organization
}

#__________________________________________________________________
#
# Intersight Ethernet Network Group Policy
# GUI Location: Policies > Create Policy > Ethernet Network Group
#__________________________________________________________________

resource "intersight_fabric_eth_network_group_policy" "vlan_group" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  description = var.description != "" ? var.description : "${var.name} Ethernet Network Group Policy."
  name        = var.name
  organization {
    moid        = data.intersight_organization_organization.org_moid.results[0].moid
    object_type = "organization.Organization"
  }
  vlan_settings {
    native_vlan   = var.native_vlan
    allowed_vlans = var.allowed_vlans
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
