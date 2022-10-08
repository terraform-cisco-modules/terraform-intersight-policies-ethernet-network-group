module "main" {
  source        = "../.."
  allowed_vlans = "1-5,10-99"
  description   = "${var.name} Ethernet Network Group Policy."
  name          = var.name
  organization  = "terratest"
  native_vlan   = 1
}
