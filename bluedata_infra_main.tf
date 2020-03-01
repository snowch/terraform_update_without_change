terraform {
  required_version = ">= 0.12.21"
  required_providers {
    aws = ">= 2.25.0"
  }
}

provider "aws" {
  profile = var.profile
  region  = var.region
}

data "aws_availability_zone" "main" {
  name = var.az
}

module "network" {
  source = "./module-network"
  project_id = var.project_id
  user = var.user
  client_cidr_block = var.client_cidr_block
  additional_client_ip_list = var.additional_client_ip_list
  subnet_cidr_block = var.subnet_cidr_block
  vpc_cidr_block = var.vpc_cidr_block
  aws_zone_id = data.aws_availability_zone.main.zone_id
}