#file added for fix for #418

# source https://registry.terraform.io/

module "network" {
  source  = "Azure/network/azurerm"
  version = "5.3.0"
}

module "eks" {
  source = "terraform-aws-modules/eks/aws"
}

## contains local modules
module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "6.6.0"
}