## Overview

This Terraform script facilitates the deployment of EC2 instances within an existing HashiCorp Consul Service on HashiCorp Cloud Platform (HCP) environment. The script is designed for partner environments where HCP Consul is already set up. The EC2 instances are provisioned without running specific services, allowing them to seamlessly integrate with the existing HCP Consul cluster.

## Purpose

The primary purpose of this Terraform configuration is to automate the deployment of EC2 instances that can serve as clients within an established HCP Consul environment. These instances are configured to connect to the existing Consul cluster, promoting a simplified and standardized approach to infrastructure provisioning.

## Components

### AWS Resources
- **EC2 Instances:** Deployed instances tailored for connecting to the HCP Consul cluster.
- **Security Group:** Allows SSH inbound traffic to the EC2 instances.
- **VPC and Subnet:** Networking components necessary for EC2 deployment.

### HashiCorp Cloud Platform (HCP) Resources
- **Consul Cluster:** Retrieves information about the existing HCP Consul cluster.
- **Consul Root Token:** Fetches the root ACL token, ensuring secure communication with Consul.

## Requirements

### HashiCorp Cloud Platform (HCP) Cluster Setup

The following will be created using the **partner-consul-sd-vpc-deployment** module

1. **HCP Consul Cluster:** Ensure that a HashiCorp Consul Service cluster is provisioned and running on HashiCorp Cloud Platform (HCP). The script assumes the availability of a functioning Consul cluster.

2. **Consul Cluster ID (cluster_id):** Identify the unique identifier for the HCP Consul cluster to which the EC2 instances will connect. This is a required input for the Terraform script.

### AWS Environment Setup

3. **AWS Account:** Access to an AWS account with the necessary permissions to create EC2 instances, security groups, VPC components, and establish VPC peering connections.

4. **AWS VPC and Subnet:** Define the AWS VPC and subnet details where the EC2 instances will be deployed. The script requires VPC and subnet IDs as inputs.

5. **AWS Security Group:** Set up an AWS Security Group allowing inbound SSH traffic to the EC2 instances. The security group ID is a required input.

6. **AWS Credentials:** Ensure that AWS credentials are configured either through environment variables, AWS CLI profiles, or other preferred methods.

### VPC Peering Setup

7. **VPC Peering Connection:** Establish VPC peering connections between the VPC hosting the HCP Consul cluster and the VPC where the EC2 instances will be deployed. Ensure the necessary route table entries for seamless communication.

Ensure these environment variables are set or exported before running the Terraform script.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | n/a |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.consul_client](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.allow_ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [hcp_consul_cluster_root_token.token](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/consul_cluster_root_token) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_subnet.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_vpc.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |
| [hcp_consul_cluster.selected](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/consul_cluster) | data source |
| [hcp_hvn.selected](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/hvn) | data source |
| [tfe_outputs.vpc-deployment](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/outputs) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_access_key"></a> [aws\_access\_key](#input\_aws\_access\_key) | AWS Access Key ID for the account to be peered to | `string` | n/a | yes |
| <a name="input_aws_secret_key"></a> [aws\_secret\_key](#input\_aws\_secret\_key) | AWS Secret Access Key for the account to be peered to | `string` | n/a | yes |
| <a name="input_hcp_client_id"></a> [hcp\_client\_id](#input\_hcp\_client\_id) | Your HashiCorp Cloud Platform client ID. | `string` | `"value"` | no |
| <a name="input_hcp_client_secret"></a> [hcp\_client\_secret](#input\_hcp\_client\_secret) | The client secret key associated with your HCP account. | `string` | `"value"` | no |
| <a name="input_hpl_hcp_project_id"></a> [hpl\_hcp\_project\_id](#input\_hpl\_hcp\_project\_id) | The project key for your HCP account. | `string` | `"value"` | no |
| <a name="input_hpl_tfc_organisation_name"></a> [hpl\_tfc\_organisation\_name](#input\_hpl\_tfc\_organisation\_name) | TFC Org name | `string` | `"value"` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | value for EC2 instance count | `number` | n/a | yes |
| <a name="input_vpc-workspace-name"></a> [vpc-workspace-name](#input\_vpc-workspace-name) | Please add the workspace name you choose when deploying the partner-consul-sd-vpc-deployment module | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_consul_root_token"></a> [consul\_root\_token](#output\_consul\_root\_token) | HCP Consul root ACL token |
| <a name="output_consul_url"></a> [consul\_url](#output\_consul\_url) | HCP Consul UI |
| <a name="output_ec2_client"></a> [ec2\_client](#output\_ec2\_client) | EC2 public IP |
| <a name="output_next_steps"></a> [next\_steps](#output\_next\_steps) | n/a |
<!-- END_TF_DOCS -->