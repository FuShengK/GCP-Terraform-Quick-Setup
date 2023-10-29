# Terraform Configuration for Cloud Run Deployment

This repository contains Terraform scripts to deploy a Google Cloud Run service.
I want to share these files with others if someone wants to deploy a service or application using GCP Cloud Run service.

## Table of Contents

- [Prerequisites](#prerequisites)
- [FAQ](#faq)
- [Quick Start](#quick-start)
- [Directory Structure](#directory-structure)
- [Configuration](#configuration)
- [Usage](#usage)
- [Cleaning Up](#cleaning-up)

## Prerequisites

- A Google Cloud Platform account.
- A domain name registered and verified with Google. (If want this cloud run to have custom domain)
- [Terraform](https://www.terraform.io/downloads.html) installed.
- [gcloud CLI](https://cloud.google.com/sdk/docs/install) installed.
- Properly configured GCP credentials on your machine.

## FAQ

*Q: Why I start to use GCP as my project host?*  
A: One of the reasons is because I want to be able to automatically deploy the service to a different domain. Another reason is because I want to show I have ability to manage applications with different cloud services.

## Quick Start

1. Clone this repository: `git clone https://github.com/FuShengK/GCP-Terraform-Quick-Setup.git`
2. Navigate to the project directory
3. Initialize Terraform: `terraform init`
4. Apply the Terraform configuration: `terraform apply`

## Directory Structure

```
.
├── data.tf
├── main.tf (Since I have separate files, I decided not to include main.tf)
├── outputs.tf
├── provider.tf
├── resources.tf
└── ......
```

- `data.tf`: Contains data blocks used to fetch data from GCP.
- `main.tf`: The main Terraform configuration file (may be empty or not exist if resources are split into separate files).
- `outputs.tf`: Defines outputs that are printed after Terraform apply.
- `provider.tf`: Configures the GCP provider.
- `resources.tf`: Contains the resource definitions for Cloud Run and other GCP services.

## Configuration

1. **Service Account**: Ensure that your GCP credentials JSON file is placed in a secure and accessible location on your machine.
2. **Terraform Data**: Customise the data variables in `data.tf` as per your requirements.

## Usage

To deploy your Cloud Run service and configure a custom domain:

1. Initialize Terraform:
   ```sh
   terraform init
   ```
2. Preview the changes Terraform will make:
   ```sh
   terraform plan
   ```
3. Apply the changes:
   ```sh
   terraform apply
   ```

## Cleaning Up

To destroy the Terraform-managed infrastructure:

```sh
terraform destroy
```

