provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region

}

resource "random_id" "random_id" {
  byte_length = 6
}

module "resource_group" {
  source = "terraform-ibm-modules/resource-group/ibm"
  version = ">= 1.3.0"
  existing_resource_group_name = var.ibm_resource_group_name
}

module "cos" {
  source  = "terraform-ibm-modules/cos/ibm"
  version = "10.3.2"

  cos_tags = var.tags
  bucket_name = "${var.cos_bucket_name}-${random_id.random_id.hex}"
  cos_instance_name = var.cos_instance_name
  region = var.region

  kms_encryption_enabled = false
  kms_key_crn = null

  resource_group_id = module.resource_group.resource_group_id
  

}





