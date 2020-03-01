variable "profile" { default = "default" }
variable "region" { }
variable "az" { }
variable "project_id" { }
variable "user" { }
variable "client_cidr_block" {  }
variable "check_client_ip" { default = "true" }
variable "additional_client_ip_list" { default = [] }
variable "vpc_cidr_block" { }
variable "subnet_cidr_block" { }

variable "allow_ssh_from_world" {
  default = false
}

variable "allow_rdp_from_world" {
  default = false
}