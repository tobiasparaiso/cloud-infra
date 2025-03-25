# Cloud Infrastructure for EKS

This repository contains Terraform configurations to provision an Amazon Elastic Kubernetes Service (EKS) cluster and its associated infrastructure, including a Virtual Private Cloud (VPC).

## Features

- **EKS Cluster**: Deploys a self-managed EKS cluster with Kubernetes version `1.31`.
- **VPC**: Creates a VPC with public, private, and intra subnets across multiple availability zones.
- **EKS Addons**: Includes essential Kubernetes addons such as CoreDNS, kube-proxy, and VPC CNI.
- **Self-Managed Node Groups**: Configures a self-managed node group with customizable instance types and scaling options.

## Prerequisites

Before using this project, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (>= 1.3.2)
- [AWS CLI](https://aws.amazon.com/cli/) (configured with appropriate credentials)
- An AWS account with permissions to create EKS, VPC, and related resources.

## Usage

To provision the infrastructure, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/cloud-infra.git
   cd cloud-infra/aws/eks
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Review the execution plan:
   ```bash
   terraform plan
   ```

4. Apply the configuration:
   ```bash
   terraform apply --auto-approve
   ```

5. To destroy the resources when no longer needed:
   ```bash
   terraform destroy --auto-approve
   ```

## Project Structure

```
cloud-infra/
├── .gitignore          # Files and directories to ignore in version control
├── README.md           # Project documentation
└── aws/
    └── eks/
        ├── eks.tf      # EKS cluster configuration
        ├── provider.tf # AWS provider configuration
        ├── versions.tf # Terraform and provider version constraints
        ├── vpc.tf      # VPC configuration
```

## Configuration

- **Region**: The AWS region is set to `us-east-2` in [`provider.tf`](aws/eks/provider.tf).
- **VPC CIDR**: The VPC CIDR block is set to `10.0.0.0/16` in [`vpc.tf`](aws/eks/vpc.tf).
- **Node Group**: The default instance type is `t3.small`, with a minimum of 2 nodes and a maximum of 3 nodes. You can adjust these settings in [`eks.tf`](aws/eks/eks.tf).

## Notes

- This example may create resources that incur costs. Ensure you understand the pricing of AWS services before applying the configuration.
- Always run `terraform destroy` to clean up resources when they are no longer needed.
