provider "azurerm" {
    features {}
}
module "resource_group" {
    source = "../modules/resource"
}
module "storage_account"{
    source = "../modules/storage"
    depends_on  =[module.resource_group]
    resource_group_name = module.resource_group.resource_group_name
}