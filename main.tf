provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region          = var.region
  
}

resource "ibm_resource_group" "cos_group" {
  name = var.ibm_resource_group_name
}

module "cos" {
  source = "./modules/cos"
  resource_group_id = ibm_resource_group.cos_group.id
}

locals {
    cos_location           = var.region
    cos_instance_id       = module.cos.cos_instance_id
    cos_instance_name     = module.cos.cos_instance_name
    cos_bucket_name       = module.cos.cos_bucket_name
    cos_instance_crn      = module.cos.cos_instance_crn
    cos_plan = module.cos.cos_plan
    cos_storage_class = module.cos.cos_storage_class
}



