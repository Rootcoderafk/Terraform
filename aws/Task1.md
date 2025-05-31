#  Spinning Up an EC2 with Nginx — My Cloud Adventure ☁️🧑‍💻

This document covers the smooth and satisfying journey of launching an AWS EC2 instance, installing **Nginx**, and serving up a web page via its **public IP**.

---

##  Step 1: Launch an EC2 Instance

###  What I did:
1. Went to the AWS EC2 console and hit **"Launch Instance"**.
2. Gave it a cool name like `nginx-server`.
3. Chose **Amazon Linux 2 AMI** (because it's stable and fast).
4. Picked the **t2.micro** type — because free tier FTW! 🤑
5. Created/selected a key pair for SSH access.
6. Configured it to use the default VPC with a **public subnet**.
7. Enabled **Auto-assign Public IP**.
8. Created a **Security Group** with:
   - SSH (port 22) from my IP
   - HTTP (port 80) from anywhere (`0.0.0.0/0`)

📸 **Screenshot:**
![EC2 Launch Screenshot](./screenshots/Screenshot%20from%202025-05-25%2021-29-39.png)
![EC2 Launch Screenshot](./screenshots/Screenshot%20from%202025-05-25%2021-29-55.png)
![EC2 Launch Screenshot](./screenshots/Screenshot%20from%202025-05-25%2021-30-25.png)

---

## 🔐 Step 2: Connect to EC2 via SSH

```bash
ssh -i my-key.pem ec2-user@<your-ec2-public-ip>
