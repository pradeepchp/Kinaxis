variable "function_name" {
  description = "The Cloud function name"
  type        = string
}

variable "description" {
  description = "The description of the cloud datafusion instance"
  type        = string
}

variable "region" {
  description = "The region to deploy cloud datafusion instance"
  type        = string
}

variable "project-id" {
  description = "Design time of service project"
  type = string
}

variable "bucket_name" {
  description = "bucket name for cloud function"
}

variable "location" {
  description = "bucket location for cloud function"
}

variable "src_obj_path" {
  description = "source object for cloud function"
}

variable "object_name" {
  description = "source object for cloud function"
}
variable "funtion_description" {
  description = "description of the function"
}

variable "runtime" {
  description = "runtime for the function"
}
variable "function_entry_point" {
  description = "entry point to the function"
}

variable "bucket-trigger-name" {
  description = "entry point to the function"
}