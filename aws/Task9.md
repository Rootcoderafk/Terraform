# AWS EC2 Snapshots: Creating and Managing Backups

## Overview

This document outlines the process of creating and managing **Amazon EBS Snapshots** to back up EC2 instances. Snapshots provide a way to protect data, support disaster recovery, and clone environments quickly using Amazon EC2 and Elastic Block Store (EBS).

---

## Steps Followed

### 1. Launch EC2 Instance
- Deployed an **EC2 instance** with an EBS volume attached (root or additional).
- Installed and configured necessary services or files for demonstration.
- Verified that the instance and volume were in a healthy running state.

### 2. Create Snapshot of the Volume
- Navigated to the **EC2 > Elastic Block Store > Volumes** section.
- Selected the relevant EBS volume and clicked on **Create Snapshot**.
- Added a description for traceability (e.g., “Web server backup before update”).
- Snapshot creation was initiated and progress monitored under **Snapshots**.

### 3. Restore Instance from Snapshot
- Used the snapshot to create a **new volume** or **AMI** (Amazon Machine Image).
- Launched a new EC2 instance using the AMI created from the snapshot (if applicable).
- Attached the volume to an existing or new instance as needed.

### 4. Verify Backup and Restore
- Confirmed that files, services, and configurations persisted after restore.
- Verified functionality of restored instances using SSH and HTTP testing.

### 5. Snapshot Management
- Added tags to snapshots for easier identification and automation (`Name`, `Env`, `CreatedBy`, etc.).
- Set up lifecycle policies (optional) using **Amazon Data Lifecycle Manager (DLM)** to automate snapshot creation and deletion.

---

## Summary

Using EC2 snapshots ensures reliable backup and restore capabilities for cloud-based workloads. It's a fundamental step in ensuring **data durability**, **infrastructure cloning**, and **disaster recovery readiness** within AWS environments.

---

## Screenshots

![picture](./screenshots/Screenshot%20from%202025-06-05%2012-29-55.png)
![picture](./screenshots/Screenshot%20from%202025-06-05%2012-29-50.png)
![picture](./screenshots/Screenshot%20from%202025-06-05%2012-29-42.png)
![picture](./screenshots/Screenshot%20from%202025-06-05%2012-29-34.png)
![picture](./screenshots/Screenshot%20from%202025-06-05%2012-29-08.png)
![picture](./screenshots/Screenshot%20from%202025-06-05%2012-25-39.png)
![picture](./screenshots/Screenshot%20from%202025-06-05%2012-22-43.png)
![picture](./screenshots/Screenshot%20from%202025-06-05%2012-18-36.png)
![picture](./screenshots/Screenshot%20from%202025-06-05%2012-16-59.png)

---

## References

- [Amazon EBS Snapshots Documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html)
- [Creating Amazon Machine Images (AMIs) from Snapshots](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-amis.html)
- [Data Lifecycle Manager](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html)

---

*Documentation created by Aditya Kumar*
