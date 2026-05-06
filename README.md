# AWS Infrastructure Automation with Terraform

This project automates the deployment of a secure and scalable AWS VPC infrastructure, including an EC2 instance, using Terraform.

## Architecture Overview
- VPC: Custom VPC with 10.0.0.0/16 CIDR block.
- Subnets: 3 Public Subnets across different Availability Zones.
- Internet Access: Internet Gateway (IGW) with a configured Public Route Table.
- Security: Security Group allowing SSH (Port 22).
- Compute: Ubuntu 24.04 LTS EC2 Instance with automated SSH Key Pair generation.

## Project Structure
- providers.tf: Provider and Region configuration.
- variables.tf: Input variables for flexibility.
- main.tf: VPC and Networking resources.
- auth.tf: Key Pair management and Local Key storage.
- instance.tf: EC2 instance deployment.
- outputs.tf: Important information like Public IP and SSH commands.

## How to Run
1. Initialize Terraform:
   `bash
   terraform init
   terraform fmt
2. Check the execution plan:
3. `bash
4. terraform plan
5. Deploy the infrastructure:
6. `bash
7. terraform apply -auto-approve
8. Destroy the resources:
9. `bash
10. terraform destroy -auto-approve
11. 
