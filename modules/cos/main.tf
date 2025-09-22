resource "ibm_resource_instance" "cos_instance" {
    name = var.cos_instance_name
    resource_group_id = var.resource_group_id
    service = "cloud-object-storage"
    plan = var.plan
    location = "global"
}

resource "ibm_cos_bucket" "cos_bucket" {
    bucket_name = var.cos_bucket_name
    resource_instance_id = ibm_resource_instance.cos_instance.id
    region_location = var.region
    storage_class = var.storage_class
}