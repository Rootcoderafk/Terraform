
# Deploying a Web Application on EC2 with Application Load Balancer (ALB)

## Overview

This documentation describes the setup of a scalable, fault-tolerant web application on AWS using EC2 instances, with traffic distributed via an Application Load Balancer (ALB). This configuration ensures high availability and balanced load distribution across multiple instances.

---

## Steps Followed

### 1. Launch EC2 Instances
- Created multiple **EC2 instances** running Amazon Linux or Ubuntu.
- Configured **Security Groups** to allow HTTP (port 80) access.
- Installed a basic web server (e.g., **Nginx**) to serve content.
- Verified web server functionality using the instance's public IP.

### 2. Create Target Group
- Created a **Target Group** for the ALB, choosing `instance` as the target type.
- Registered EC2 instances to the target group.
- Set the health check path (e.g., `/`) to ensure proper instance health monitoring.

### 3. Launch Application Load Balancer (ALB)
- Created an **Application Load Balancer** in the same VPC and availability zones as the EC2 instances.
- Chose **internet-facing** scheme and HTTP (port 80) as the listener protocol.
- Attached the previously created **target group** to the ALB.

### 4. Configure Security Groups
- Allowed HTTP traffic from the internet in the ALB’s security group.
- Restricted EC2 security group to accept traffic only from the ALB.

### 5. Test the Load Balancer
- Accessed the application using the **ALB DNS name**.
- Verified that traffic was successfully routed and load balanced across all EC2 instances.

---

## Summary

This setup enables traffic distribution across multiple EC2 instances, improving both **availability** and **scalability**. Using ALB ensures that incoming requests are intelligently routed based on health checks and availability.

---

## Screenshots

![picture](./screenshots/Screenshot%20from%202025-05-26%2010-59-31.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2010-59-19.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2010-59-07.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2010-58-18.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2010-57-53.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2010-09-19.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2010-06-35.png)

---

## References

- [Amazon EC2 Documentation](https://docs.aws.amazon.com/ec2/)
- [Elastic Load Balancing Documentation](https://docs.aws.amazon.com/elasticloadbalancing/)
- [Nginx Installation Guide](https://nginx.org/en/docs/)

---

*Documentation created by Aditya Kumar*
