variable "project_name" {
  description = "Project Name."
  default     = "settings"
  type        = string
}

variable "region" {
  description = "Region in which to build the resource."
  default     = "ap-northeast-1"
  type        = string
}

variable "my_domain" {
  description = "My Domain."
  type        = string
}

variable "vpc_cidr" {
  description = "The IP address range of the VPC in CIDR notation."
  default     = "10.0.0.0/16"
  type        = string
}