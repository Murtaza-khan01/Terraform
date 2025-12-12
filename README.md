Here is a **professional, clean, and complete GitHub `README.md`** structure for your **Terraform AWS VPC Project**.
This is the same style used in real DevOps repositories — clean, modern, and easy for recruiters to understand.

You can copy-paste this entire README directly into GitHub.

---

# 🟦 **Terraform AWS VPC Project**

A fully automated **AWS VPC Infrastructure** deployed using **Terraform**, including VPC, public subnets, route tables, internet gateway, security groups, EC2 instances, S3 bucket, and user-data scripts.
This project demonstrates Infrastructure as Code (IaC), modular cloud design, and end-to-end deployment automation.

---

## 📌 **Project Overview**

This project creates a complete VPC architecture using Terraform.
It includes:

* Custom **VPC**
* **Two public subnets** in different Availability Zones
* **Internet Gateway**
* **Route Table** with associations
* **Security Group** for HTTP + SSH
* **EC2 Instances** using user data scripts
* **S3 Bucket**
* Clean configuration using `provider.tf`, `vars.tf`, and `main.tf`

The goal of this project is to understand real-world cloud networking, Terraform provisioning, and IaC workflows.

---

## 🏗️ **Architecture Diagram (Conceptual)**

```
AWS
│
└── VPC (10.0.0.0/16)
    ├── Public Subnet A (10.0.0.0/24)
    │    └── EC2 Instance
    ├── Public Subnet B (10.0.1.0/24)
    │    └── EC2 Instance
    ├── Internet Gateway
    ├── Route Table → 0.0.0.0/0 → IGW
    └── Security Group (80, 22)
```

---

## 📂 **Project Structure**

```
terraform-vpc-project/
│
├── provider.tf          # AWS provider & region
├── vars.tf              # Variables (CIDR blocks, region, etc.)
├── main.tf              # VPC, Subnets, IGW, RT, SG, EC2, S3
├── userdata.sh          # Startup script for EC2 instance
└── README.md            # Project documentation
```

---

## 🚀 **Resources Created**

### **1. VPC**

* Custom CIDR: `10.0.0.0/16`

### **2. Subnets**

* Public Subnet 1 — `us-east-1a`
* Public Subnet 2 — `us-east-1b`
* `map_public_ip_on_launch = true`

### **3. Internet Gateway**

* Attached to VPC

### **4. Route Table**

* Route: `0.0.0.0/0` → IGW
* Association with both subnets

### **5. Security Group**

Inbound:

* Port 80 → HTTP
* Port 22 → SSH
  Outbound:
* All allowed

### **6. EC2 Instances**

* AMI: Amazon Linux 2
* Instance type: `t2.micro`
* User data script via Base64

### **7. S3 Bucket**

* For storage, logs, or future enhancements

---

## 📦 **Prerequisites**

Install the following:

### **Terraform**

```bash
sudo apt update && sudo apt install -y wget unzip
wget https://releases.hashicorp.com/terraform/1.5.0/terraform_1.5.0_linux_amd64.zip
unzip terraform_1.5.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform -version
```

### **AWS CLI**

```bash
sudo apt install awscli -y
aws configure
```

Provide:

* AWS Access Key
* AWS Secret Key
* Region (e.g., `us-east-1`)
* Output format: `json`

---

## ⚙️ **How to Deploy**

### **1. Initialize Terraform**

```bash
terraform init
```

### **2. Validate Syntax**

```bash
terraform validate
```

### **3. See What Will Be Created**

```bash
terraform plan
```

### **4. Deploy Infrastructure**

```bash
terraform apply -auto-approve
```

### **5. Destroy Infrastructure (Optional)**

```bash
terraform destroy -auto-approve
```

---

## 📝 **Variables Used (vars.tf)**

Example:

```hcl
variable "cidr" {
  default = "10.0.0.0/16"
}
variable "region" {
  default = "us-east-1"
}
```

---

## 🎯 **Learning Outcomes**

By completing this project, I learned:

* How to design a production-style VPC
* How Terraform builds and manages state
* How to structure Terraform code using providers & variables
* How IGW, route tables, and subnets work together
* How to automate EC2 setup using user data
* How to package cloud infrastructure into reusable IaC code

---



---

## 🤝 **Contributions**

Feel free to fork the repo and contribute improvements.

---

## 📬 **Contact**

If you have any questions, feel free to reach out on LinkedIn.
https://www.linkedin.com/in/murtaza-khan-4b6b8a231/

Just tell me!
