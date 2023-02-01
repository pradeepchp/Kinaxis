variable "instance_name" {
description = "Cloud Datafusion Instance Name"
type =  string
}

variable "description" {
description = "Cloud Datafusion Instance Description"
type =  string 
}

variable "instance_type" {
description = "Cloud Datafusion Instance Type"
type =  string  
}

variable "cdf_version" {
description = "Cloud Datafusion Instance Version"
type =  string  
}

variable "default_service_account" {
description = "Default Dataproc Service Account"
type =  string
}

variable "region" {
description = "CDF Instance region"
type =  string 
}

variable "display_name" {
description = "CDF Instance Display Name"
type =  string  
}

variable "example_key" {
description = "key values of cdf instance"
}

variable "host_vpc_network" {
description = "Host project VPC to deploy private CDF instance"
type = string 
}

variable "project-id" {
  description = "Design time of service project"
  type = string
}

variable "datafusion_allocated_address" {
description = "datafusion allocated ip ranges"
type = string
}

variable "host_project" {
description = "Host project to allocate IP Address"
type = string
}