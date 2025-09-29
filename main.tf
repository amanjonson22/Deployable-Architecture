provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region

}

resource "ibm_resource_group" "cos_group" {
  name = var.ibm_resource_group_name
}

module "cos" {
  source  = "terraform-ibm-modules/cos/ibm"
  version = "10.3.2"

  access_tags = var.tags
  bucket_name = var.cos_bucket_name
  cos_instance_name = var.cos_instance_name
  region = var.region

  create_cos_bucket = true
}





