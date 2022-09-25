<!-- BEGIN_TF_DOCS -->
# Terraform Intersight Policies - Adapter Configuration
Manages Intersight Adapter Configuration Policies

Location in GUI:
`Policies` » `Create Policy` » `Adapter Configuration`

## Example

### main.tf
```hcl
module "ethernet_network_group_policy" {
  source  = "terraform-cisco-modules/policies-ethernet-network-group/intersight"
  version = ">= 1.0.1"

  allowed_vlans = "1-5,10-99"
  description   = "default Ethernet Network Group Policy."
  name          = "default"
  native_vlan   = 1
  organization  = "default"
}
```

### provider.tf
```hcl
terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">=1.0.32"
    }
  }
  required_version = ">=1.3.0"
}
```

### variables.tf
```hcl
variable "apikey" {
  description = "Intersight API Key."
  sensitive   = true
  type        = string
}

variable "endpoint" {
  default     = "https://intersight.com"
  description = "Intersight URL."
  type        = string
}

variable "secretkey" {
  description = "Intersight Secret Key."
  sensitive   = true
  type        = string
}
```

## Environment Variables

### Terraform Cloud/Enterprise - Workspace Variables
- Add variable apikey with value of [your-api-key]
- Add variable secretkey with value of [your-secret-file-content]

### Linux
```bash
export TF_VAR_apikey="<your-api-key>"
export TF_VAR_secretkey=`cat <secret-key-file-location>`
```

### Windows
```bash
$env:TF_VAR_apikey="<your-api-key>"
$env:TF_VAR_secretkey="<secret-key-file-location>""
```
<!-- END_TF_DOCS -->