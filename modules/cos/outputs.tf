output "cos_instance_name" {
  description = "Cloud Object Storage instance name"
  value = ibm_resource_instance.cos_instance.name
}

output "cos_bucket_name" {
  description = "Cloud Object Storage bucket name"
  value = ibm_cos_bucket.cos_bucket.bucket_name    
}

output "cos_instance_id" {
  description = "Cloud Object Storage instance ID"
  value = ibm_resource_instance.cos_instance.id 
}

output "cos_instance_crn" {
  description = "Cloud Object Storage instance CRN"
  value = ibm_resource_instance.cos_instance.crn
}

output "cos_plan" {
  description = "Cloud Object Storage instance plan"
  value = ibm_resource_instance.cos_instance.plan
}

output "cos_storage_class" {
  description = "Cloud Object Storage bucket storage class"
  value = ibm_cos_bucket.cos_bucket.storage_class
}