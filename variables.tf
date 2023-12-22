# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "instance_count" {
  type = number
  description = "value for EC2 instance count"
}

# TODO Lookup from workspace
variable "vpc_id" {
  type        = string
  description = "AWS VPC ID"
}

# TODO Lookup from workspace
variable "vpc_cidr_block" {
  type        = string
  description = "AWS CIDR block"
}

# TODO Lookup from workspace
variable "subnet_id" {
  type        = string
  description = "AWS subnet (public)"
}

# TODO Lookup from workspace
variable "cluster_id" {
  type        = string
  description = "HCP Consul ID"
}

# TODO Lookup from workspace
variable "hcp_consul_security_group_id" {
  type        = string
  description = "AWS Security group for HCP Consul"
}

variable "hcp_client_id" {
  description = "Your HashiCorp Cloud Platform client ID."
  type = string
  default = "value"
}

variable "hcp_client_secret" {
  description = "The client secret key associated with your HCP account."
  type = string
  default = "value"
}

variable "hpl_hcp_project_id" {
  description = "The project key for your HCP account."
  type = string
}

variable "aws_access_key" {
  description = "AWS Access Key ID for the account to be peered to"
  type = string
  sensitive = false
}
variable "aws_secret_key" {
  description = "AWS Secret Access Key for the account to be peered to"
  type = string
  sensitive = true
}

#TODO set defaults for the hcp