variable "bucket_name" {
  description = "bucket name for cloud function"
}

variable "region" {
  description = "The region to deploy cloud datafusion instance"
  type        = string
}

variable "project-id" {
  description = "Design time of service project"
  type = string
}


variable "location" {
  description = "bucket location for cloud function"
}

variable "storage-type" {
  description = "source object for cloud function"
}

