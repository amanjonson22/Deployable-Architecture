variable "cos_instance_name" {
  description = "The name of the Cloud Object Storage instance."
  type        = string 
  default = "Teste-DA"
}

variable "resource_group_id" {
  description = "The ID of the resource group where the Cloud Object Storage instance is located."
  type        = string
}

variable "region" {
  description = "The region where the Cloud Object Storage instance is located."
  type        = string
  default = "br-sao"
}

variable "cos_bucket_name" {
  description = "The name of the Cloud Object Storage bucket to create."
  type        = string
  default = "bucket-teste-da"
}

variable "storage_class" {
  description = "The storage class of the Cloud Object Storage bucket."
  type        = string
  default     = "standard" 
}

variable "plan" {
  description = "The plan of the Cloud Object Storage instance."
  type        = string
  default     = "standard"
}