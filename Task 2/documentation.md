# Terraform EC2 Provisioning on AWS

Used Terraform to launch an Ubuntu EC2 instance in AWS with custom settings.

## What I did

- Installed Terraform and AWS CLI.
- Configured AWS credentials using `aws configure`.
- Created a custom **VPC** and **Subnet** using Terraform modules.
- Created an **EC2 instance** inside that subnet.
- Wrote these Terraform files:
  - `provider.tf`: Set AWS provider and region.
  - `main.tf`: Called modules for VPC, subnet, and EC2.
  - `variables.tf`: Declared AMI ID, instance type, VPC/subnet CIDRs, etc.
  - `terraform.tfvars`: Provided actual values.

## Configurations

- **VPC CIDR**: `10.0.0.0/16`
- **Subnet CIDR**: `10.0.1.0/24`
- **AMI ID**: `ami-053b0d53c279acc90` (Ubuntu)
- **Instance type**: `t3.micro` (free-tier)
- **EBS Volume**: 12 GB
- **Public IP**: Disabled
- **Region**: `us-east-1`



## Screenshot of work Done:
 - **Terminal**: ![Architecture Diagram](./assests/Screenshot%20from%202025-05-04%2014-39-49.png)
 - **EC2**: ![Architecture Diagram](./assests/Screenshot%20from%202025-05-04%2014-40-34.png)
 - **SubNet**: ![Architecture Diagram](./assests/Screenshot%20from%202025-05-04%2014-41-12.png)
 - **VPC**: ![Architecture Diagram](./assests/Screenshot%20from%202025-05-04%2014-41-41.png)

## Commands used

```bash
terraform init
terraform plan
terraform apply


