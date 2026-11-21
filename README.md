# Basic Terraform S3 Project

This project creates a private Amazon S3 bucket for practicing Git and GitHub workflows.

## Prerequisites

- Terraform installed
- AWS CLI installed and configured with credentials that can create S3 buckets
- An AWS account

## Setup

1. Copy `terraform.tfvars.example` to `terraform.tfvars`.
2. Set `bucket_name` to a globally unique S3 bucket name.
3. Initialize Terraform:

   ```bash
   terraform init
   ```

4. Check the configuration:

   ```bash
   terraform fmt
   terraform validate
   terraform plan
   ```

5. Create the bucket only if you intend to deploy it:

   ```bash
   terraform apply
   ```

6. When finished, remove the resources created by this practice project:

   ```bash
   terraform destroy
   ```

Do not commit `terraform.tfvars`, state files, or AWS credentials to Git.
