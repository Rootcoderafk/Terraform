# Terraform EC2 Instance Provisioning on AWS

This project uses Terraform to provision an Ubuntu EC2 instance on AWS.

## What I did:

1. **Installed Terraform and AWS CLI**
2. **Configured AWS CLI** with my access key, secret key, and region.
3. **Created the following Terraform files**:
   - `provider.tf`: Defines the AWS provider and region.
   - `main.tf`: Creates an EC2 instance using variables, disables the public IP, and increases the EBS volume to 12 GB.
   - `variables.tf`: Defines variables for AMI ID, instance type, and subnet ID.
   - `terraform.tfvars`: Provides actual values for the variables.

## Key Configurations:

- **AMI ID**: Ubuntu (free-tier) `ami-053b0d53c279acc90`
- **Instance type**: `t3.micro`
- **Subnet ID**: Manually copied from AWS VPC > Subnets
- **Public IP**: Disabled
- **EBS volume**: 12 GB

## Commands Used:

1. `terraform init`: Initializes the Terraform configuration.
2. `terraform plan`: Creates an execution plan.
3. `terraform apply`: Applies the configuration to provision the EC2 instance.

## Architecture Diagram

![Architecture Diagram](./assests/Screenshot%20from%202025-05-04%2014-05-43.png)

After applying the configuration, I checked the **EC2 Dashboard** in the correct region (`us-east-1`) to see the instance.
![Architecture Diagram](./assests/Screenshot%20from%202025-05-04%2014-06-28.png)

## Learnings

This task helped me understand the basics of Terraform infrastructure provisioning.
