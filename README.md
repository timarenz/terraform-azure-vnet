# tf_azure_vnet
This Terraform module is used to create a Azure resource group containing a simple Azure Virtual Network with two subnets using 192.168.0.0/16 as cidr block.
The first (public) network uses 192.168.1.0/24 as subnet. The second (private) network uses the subnet 192.168.2.0/24.

## Input variables
* `environment_name` - Used as prefix for all supported object names
* `azure_region` - Name of the region you want to create the resources

## Output variables

* `azure_rg_name` - Name of the Azure resource group created
* `azure_public_subnet_name` - Name of the first (public) network
* `azure_public_subnet_id` - Id of the first (public) subnet
* `azure_public_subnet_cidr` - cidr block used by the first (public) subnet
* `azure_private_subnet_name` - Name of the second (private) network
* `azure_private_subnet_id` - Id of the second (private) subnet
* `azure_private_subnet_cidr` - cidr block used by the second (private) subnet

## Example
```hcl
module "vpc-aws" {
  source            = "github.com/timarenz/tf_azure_vnet"
  environment_name  = "staging"
  azure_region      = "North Europe"
}
```

## Authors
Created and maintaned by [Tim Arenz](https://github.com/timarenz)

## License
[MIT](LICENSE)