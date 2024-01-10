# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "ec2_client" {
  value       = aws_instance.consul_client[0].public_ip
  description = "EC2 public IP"
}

output "consul_url" {
  value = local.consul_address
  description = "HCP Consul UI"
}

output "consul_root_token" {
  value       = hcp_consul_cluster_root_token.token.secret_id
  sensitive   = true
  description = "HCP Consul root ACL token"
}

output "consul_user_token" {
  value = data.consul_acl_token_secret_id.user_token.secret_id
  sensitive   = true
  description = "HCP Consul user ACL token"
}

output "next_steps" {
  value = "Hashicups Application will be ready in ~2 minutes. Use 'terraform output consul_root_token' to retrieve the root token."
}

