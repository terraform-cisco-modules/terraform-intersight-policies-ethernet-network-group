#______________________________________________________________
#
# Ethernet Network Group (VLAN Group) Policy Variables.
#______________________________________________________________

variable "allowed_vlans" {
  description = "List of VLAN's to Add to the VLAN Group Policy. i.e. '1-5,10-99'."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "network_group"
  description = "Name for the Policy."
  type        = string
}

variable "native_vlan" {
  default     = null
  description = "VLAN to Assign as the Native VLAN."
  type        = number
}

variable "organization" {
  default     = "default"
  description = "Intersight Organization Name to Apply Policy to.  https://intersight.com/an/settings/organizations/."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
