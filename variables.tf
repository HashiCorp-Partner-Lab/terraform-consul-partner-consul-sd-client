# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "instance_count" {
  type = number
  description = "value for EC2 instance count"
  default = 1
}

variable "vpc_id" {
  type        = string
  description = "AWS VPC ID"
}

variable "vpc_cidr_block" {
  type        = string
  description = "AWS CIDR block"
}

variable "subnet_id" {
  type        = string
  description = "AWS subnet (public)"
}

variable "cluster_id" {
  type        = string
  description = "HCP Consul ID"
}

variable "hcp_consul_security_group_id" {
  type        = string
  description = "AWS Security group for HCP Consul"
}

variable "hcp_client_id" {
  description = "Your HashiCorp Cloud Platform client ID."
  type = string
}

variable "hcp_client_secret" {
  description = "The client secret key associated with your HCP account."
  type = string
}

variable "hcp_project_id" {
  description = "The project key for your HCP account."
  type = string
}

#TODO set defaults for the hcp details