variable "project_name" {
  description = "Project Name."
  default     = "settings"
  type        = string
}

variable "my_domain" {
  description = "My Domain."
  type        = string
}

variable "vpn_server_record" {
  type = string
}

variable "vpn_server_ip" {
  type = string
}
