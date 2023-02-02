variable "instance_name" {
  description = "The Cloud datafusion instance name"
  type        = string
}

variable "cdf_version" {
  description = "The version of CDF to deploy: BASIC, DEVELOPER, ENTERPRISE"
  type        = string
}

variable "cdf_release" {
  description = "The release of cdf to deploy"
  type        = string
}

variable "cdf_network" {
  description = "The network to deploy Cloud datafusion Private Instance"
  type        = string
}

variable "cdf_ip_range" {
  description = "The /22 CIDR range to deploy CDF"
  type        = string
}

variable "description" {
  description = "The description of the cloud datafusion instance"
  type        = string
}

variable "default_service_account" {
  description = "The default dataproc service account"
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

variable "instance_version" {
  description = "cdf instance version"
  type =  string
  
}

variable "display_name" {
  description = "cdf display name"
}

variable "example_key" {
  description = "key values for cdf instance"
}