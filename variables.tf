# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "instance_count" {
  description = "value for EC2 instance count"
  type = number
}

variable "vpc-workspace-name" {
  description = "Please add the workspace name you choose when deploying the partner-consul-sd-vpc-deployment module"
  type = string
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
  default = "value"
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

variable "hpl_tfc_organisation_name" {
  description = "TFC Org name"
  type = string
  default = "value"
}

#TODO set defaults for the hcp