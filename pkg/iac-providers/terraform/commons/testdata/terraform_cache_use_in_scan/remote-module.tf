#file added for fix for #418

# source https://registry.terraform.io/

module "network" {
  source  = "Azure/network/azurerm"
  version = "4.1.0"
}

