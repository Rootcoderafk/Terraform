# Terraform EC2 Provisioning on AWS

Used Terraform to launch an Ubuntu EC2 instance in AWS with custom settings.

## What I did

- Installed Terraform and AWS CLI.
- Configured AWS credentials using `aws configure`.
- Created these Terraform files:
  - `provider.tf`: Set AWS provider and region.
  - `main.tf`: Defined EC2 instance (t3.micro, 12 GB EBS, no public IP).
  - `variables.tf`: Declared AMI ID, instance type, subnet ID, etc.
  - `terraform.tfvars`: Provided values for the above variables.
  - created personal vpc and broke it down to subnet 1a

## Configurations

- **AMI ID**: `ami-053b0d53c279acc90` (Ubuntu)
- **Instance type**: `t3.micro` (free-tier)
- **EBS Volume**: 12 GB
- **Public IP**: Disabled
- **Region**: `us-east-1`
- **Subnet ID**: Taken from AWS Console

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


