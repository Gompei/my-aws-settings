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
