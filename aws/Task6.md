# AWS Route 53 with Application Load Balancer (ALB) Integration

## Overview

This document outlines the process of connecting a custom domain to an AWS Application Load Balancer (ALB) using Amazon Route 53. This setup enables domain-level access to web applications hosted on EC2 instances behind an ALB.

---

## Steps Followed

### 1. Domain Registration
- Acquired a domain from a registrar (e.g., GoDaddy).
- Accessed the domain management console to configure DNS settings.

### 2. Route 53 Hosted Zone Setup
- Created a **Hosted Zone** in Route 53 with the same name as the registered domain.
- Automatically generated default NS and SOA records.

### 3. Update Domain Nameservers
- Copied the **NS (Name Server)** records from the hosted zone.
- Updated the domain registrar's nameserver settings to point to the Route 53 nameservers.

### 4. Create an Application Load Balancer (ALB)
- Deployed an **ALB** and configured listener rules (e.g., HTTP on port 80).
- Registered **EC2 instances** to the ALB target group.
- Verified that the ALB DNS name was working and pointing to the application.

### 5. Create a Record in Route 53
- Added an **A record (Alias)** in Route 53 pointing the domain (e.g., `www.example.com`) to the ALB.
- Selected the ALB from the list of AWS resources for alias routing.

### 6. DNS Propagation and Testing
- Allowed some time for DNS propagation.
- Verified that the domain was correctly routing traffic to the EC2 instances via the ALB.

---

## Summary

Connecting Route 53 to an ALB enables seamless domain-level routing to applications hosted in AWS. It abstracts away the underlying infrastructure from users, providing a professional and secure access point via a custom domain.

---

## Screenshots

![pictures](./screenshots/Screenshot%20from%202025-05-26%2011-39-52.png)
![pictures](./screenshots/Screenshot%20from%202025-05-26%2011-35-05.png)
![pictures](./screenshots/Screenshot%20from%202025-05-26%2011-34-55.png)
![pictures](./screenshots/Screenshot%20from%202025-05-26%2011-32-48.png)
![pictures](./screenshots/Screenshot%20from%202025-05-26%2011-32-14.png)
![pictures](./screenshots/Screenshot%20from%202025-05-26%2011-32-14.png)
![pictures](./screenshots/Screenshot%20from%202025-05-26%2011-31-22.png)

---

## References

- [Amazon Route 53 Documentation](https://docs.aws.amazon.com/route53/)
- [Elastic Load Balancing Documentation](https://docs.aws.amazon.com/elasticloadbalancing/)
- [Custom Domain Setup Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html)

---

*Documentation created by Aditya Kumar*