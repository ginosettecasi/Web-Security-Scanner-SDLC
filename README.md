# **Automated Cloud Security Scanner** 🛡️🔍  

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/ginosettecasi/automated-cloud-security-scanner/security_scan.yml)  
![AWS S3 Upload](https://img.shields.io/badge/AWS-S3%20Upload-success?logo=amazonaws&color=green)  
![Snyk Security](https://img.shields.io/badge/Snyk-Security%20Scan-success?logo=snyk&color=purple)  

## **🔹 Overview**
🚀 **Automated Cloud Security Scanner** is an **enterprise-grade security automation pipeline** designed for **containerized applications**. It integrates **Snyk security scanning** with **GitHub Actions & AWS S3** to **automate vulnerability detection** in Docker images.  

This project **demonstrates advanced DevSecOps** practices, making it an **ideal solution for security-conscious organizations** and **a strong portfolio project for senior-level security roles**.  

## **🔹 Features**
✅ **Automated Security Scanning** → Detect vulnerabilities in Docker images with **Snyk**  
✅ **CI/CD Integration** → Runs seamlessly in **GitHub Actions**  
✅ **Cloud Storage for Security Reports** → Uploads results to **AWS S3**  
✅ **Fail-Safe Error Handling** → Ensures smooth execution, even when vulnerabilities are found  
✅ **Enterprise-Ready Security Best Practices** → Ensures compliance with **security automation frameworks**  

## **🔹 How It Works**
1. **Push Code to GitHub** → Triggers an **automated security scan**  
2. **Builds a Docker Image** → Scans for vulnerabilities using **Snyk**  
3. **Stores Security Reports in AWS S3** → Keeps logs of all findings  
4. **Monitors Pipeline Health** → Ensures security scans complete successfully  

## **🔹 Technologies Used**
- **AWS S3** (Cloud storage for reports)  
- **GitHub Actions** (CI/CD automation)  
- **Snyk CLI** (Security vulnerability detection)  
- **Docker** (Containerized security scanning)  
- **Python (Flask API)** (Demo web app with controlled vulnerabilities)  

## **🔹 Setup Instructions**
### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/YOUR_GITHUB_USERNAME/Automated-Cloud-Security-Scanner.git
cd Automated-Cloud-Security-Scanner
```

### **2️⃣ Configure AWS Credentials**
Store your AWS IAM role in **GitHub Secrets**:
- `AWS_ROLE_TO_ASSUME` → IAM role ARN for GitHub Actions
- `AWS_REGION` → Your AWS region (e.g., `us-east-2`)

### **3️⃣ Add Snyk Token to GitHub Secrets**
- `SNYK_TOKEN` → Obtain from [Snyk Dashboard](https://app.snyk.io/)

### **4️⃣ Run the Security Scan**
Push code to GitHub → The scan runs automatically!  

### **5️⃣ View Scan Results in AWS S3**
Reports are stored in:
```
s3://secure-web-scan-results/snyk_container_results.json
```

## **🔹 Why Did I Choose This Project? 🚀**
✅ **Demonstrates Enterprise-Level Security Automation**  
✅ **Showcases DevSecOps, CI/CD, and Cloud Security**  
✅ **Built Using Industry-Standard Tools (AWS, GitHub Actions, Snyk)**  
✅ **Error Handling & Best Practices Applied**  
✅ **Scalable for Enterprise Use & Compliance (PCI DSS, SOC 2, ISO 27001)**  

## **🔹 About the Developer**
👨‍💻 **Created by:** *Gino Settecasi*  
🔗 **LinkedIn:** [Gino Settecasi](https://www.linkedin.com/in/gino-settecasi/)  
🌐 **GitHub:** [ginosettecasi](https://github.com/ginosettecasi)  
📩 **Contact:** *gino.settecasi@gmail.com*  

## **🔹 Final Thoughts**
If you're a hiring manager looking for **an experienced security professional** with expertise in **DevSecOps, security automation, and cloud security**, this project demonstrates **real-world security implementation at an enterprise level**.  

💡 **Looking to scale your security automation processes? Let's connect!** 🚀  

---
