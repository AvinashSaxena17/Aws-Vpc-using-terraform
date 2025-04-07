# AWS Infrastructure with Terraform

**Description:**
This project provides a fully automated AWS infrastructure setup using Terraform. It includes a VPC configured with private and public subnets, as well as a NAT Gateway to enable secure internet access for resources in private subnets.

## 🚀 Features

- VPC with public and private subnets
- Internet Gateway and NAT Gateway
- Route tables for proper network routing
- EC2 instances (public/private subnet)
- Security Groups
- Subnet association with Route tables.

  
## 🛠️ Technologies Used

- **Terraform** v1.0+
- **AWS**
- (Optional) **GitHub Actions** for CI/CD

## 🌐 Networking Details:

### 🔸 VPC Configuration
- **VPC CIDR Block**: `10.0.0.0/16`

### 🔸 Subnet Allocation
- **Public Subnets**:
  - `10.0.1.0/24`
  - `10.0.2.0/24`
- **Private Subnets**:
  - `10.0.3.0/24`
  - `10.0.4.0/24`

### 🔸 Subnetting Strategy
- Each subnet is deployed in a separate **Availability Zone** for high availability.
- **Public subnets** are connected to an **Internet Gateway** for inbound and outbound internet access.
- **Private subnets** route traffic through a **NAT Gateway** for secure outbound access to the internet.
- **Route Tables** are configured to control traffic flow and ensure proper isolation between public and private subnets.
















