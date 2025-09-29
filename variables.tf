variable "ibmcloud_api_key" {
  description = "The API key for IBM Cloud."
  type        = string
  sensitive   = true
}

variable "ibm_resource_group_name" {
  description = "The name of the resource group where the Cloud Object Storage instance is located."
  type        = string
  default = "Default"
}

variable "region" {
  description = "The region where the Cloud Object Storage instance is located."
  type        = string
  default     = "br-sao"
}

variable "tags" {
  description = "The tags for the resources"
  type = list(string)
}

variable "cos_bucket_name" {
  description = "The name of the COS Bucket"
  type = string
}

variable "cos_instance_name" {
  description = "The name of the instance of the Cloud Object Storage"
  type = string
}