# AWS VPC Private Subnet Setup Documentation

## Overview

This document explains the process of creating an AWS Virtual Private Cloud (VPC) with a private subnet, including the key steps and configurations involved. The setup ensures secure, isolated network architecture suitable for deploying internal resources that should not be directly accessible from the internet.

---

## Steps Followed

### 1. Create a VPC
- Defined a new VPC with a specific CIDR block.
- Enabled DNS hostnames and DNS resolution to allow internal name resolution.

### 2. Create Subnets
- Created one or more private subnets within the VPC.
- Assigned appropriate CIDR blocks for subnet IP addressing.
- Ensured subnets were marked as private by not associating them with an Internet Gateway.

### 3. Setup Route Tables
- Created a custom route table for the private subnet.
- Configured routes for internal communication within the VPC.
- Avoided routes directing traffic to an Internet Gateway to keep subnets private.

### 4. Configure NAT Gateway (if applicable)
- To enable outbound internet access from private subnets, configured a NAT Gateway in a public subnet.
- Updated the private subnet route table to route external traffic via the NAT Gateway.

### 5. Security Groups and Network ACLs
- Configured security groups to control inbound and outbound traffic for instances within the private subnet.
- Set Network ACLs to add an additional layer of subnet-level security.

---

## Summary

By setting up a VPC with private subnets, the architecture supports secure and controlled access to internal resources. This approach is fundamental for production environments where sensitive services require isolation from direct internet exposure.

---

## Screenshots

![picture](./screenshots/Screenshot%20from%202025-05-26%2009-42-56.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2009-42-46.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2009-42-37.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2009-42-26.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2009-42-20.png)


## References

- AWS VPC Documentation: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
- Best Practices for VPC Design

---

*Documentation created by Aditya Kumar*

