# AWS IAM (Identity and Access Management) Setup for DevOps

## Overview

This documentation outlines the steps taken to configure AWS IAM (Identity and Access Management) for a secure and structured DevOps workflow. IAM is essential for managing access to AWS resources by defining roles, users, and permission boundaries.

---

## Steps Followed

### 1. IAM User Creation
- Created individual **IAM users** for each team member.
- Assigned **programmatic access** and optionally, **console access** based on role requirements.
- Generated and downloaded **access keys** securely for CLI and SDK usage.

### 2. IAM Group and Role Management
- Created **IAM groups** based on roles (e.g., Admin, Developer, ReadOnly).
- Attached appropriate **policies** (AWS managed or custom) to groups.
- Ensured least privilege principle by granting only the necessary permissions.

### 3. Policy Assignment
- Used **JSON-based policies** to fine-tune access control.
- Created **custom IAM policies** for specific actions (e.g., EC2 start/stop, S3 read/write).
- Tested permissions using the **IAM Policy Simulator**.

### 4. MFA and Security Best Practices
- Enabled **Multi-Factor Authentication (MFA)** for critical accounts.
- Rotated access keys and passwords regularly.
- Applied **password policies** (minimum length, complexity, rotation) to all users.

### 5. Verified Access via AWS CLI
- Configured IAM credentials using `aws configure` in the CLI.
- Verified successful connection by listing resources (e.g., `aws s3 ls`, `aws ec2 describe-instances`).
- Ensured users were restricted to their assigned permissions only.

---

## Summary

Properly managing IAM ensures secure access control and accountability across AWS resources. This is a critical component in DevOps pipelines, CI/CD systems, and infrastructure automation processes.

---

## Screenshots

![picture](./screenshots/Screenshot%20from%202025-05-26%2012-10-28.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2012-04-26.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2012-04-16.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2012-02-00.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2012-01-04.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2012-00-21.png)
![picture](./screenshots/Screenshot%20from%202025-05-26%2011-51-17.png)

---

## References

- [AWS IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
- [IAM Policy Simulator](https://policysim.aws.amazon.com/)
- [AWS CLI IAM Docs](https://docs.aws.amazon.com/cli/latest/reference/iam/)

---

*Documentation created by Aditya Kumar*
