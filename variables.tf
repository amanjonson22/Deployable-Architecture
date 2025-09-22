variable "ibmcloud_api_key" {
  description = "The API key for IBM Cloud."
  type        = string
  sensitive = true
  
}

variable "ibm_resource_group_name" {
  description = "The name of the resource group where the Cloud Object Storage instance is located."
  type        = string
  default     = "Default"   
}

variable "region" {
  description = "The region where the Cloud Object Storage instance is located."
  type        = string
  default     = "br-sao"
}