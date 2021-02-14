# IFIDUK - The marketplace for web based apps

[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

IFIDUK is an app suite for running your own SaaS marketplace. You assemble your app and deploy it on IFIDUK where your users can visit and deploy their own instances.

The suite consists of the following:

- A ReactJS front end that uses Azure Active Directory B2C for authentication and authorization - https://github.com/harishnarain/ifiduk-app
- An Azure Functions App that handles all CRUD operations and a MongoDB seeder. The functions app will also require Azure Service Bus for sending deployment messages - https://github.com/harishnarain/ifiduk-deployment-function
- The IFIDUK Server Agent that deploys containers on Docker - https://github.com/harishnarain/ifiduk-agent
- IFIDUK Terraform code to deploy services on Azure (Work in progress) - https://github.com/harishnarain/ifiduk-terraform

## Table of Contents

- [IFIDUK - The marketplace for web based apps](#ifiduk---the-marketplace-for-web-based-apps)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Routes](#routes)
  - [Features](#features)
  - [License](#license)
  - [Contributing](#contributing)
  - [Screenshots](#screenshots)
  - [Questions](#questions)

## Installation

This is the installation instructions for the IFIDUK Terraform code.

1. Clone this GitHub repository

   ```
   git@github.com:harishnarain/ifiduk-terraform.git
   ```

2. Install Terraform

3. Login to Azure CLI and select a subscription

4. For each deployment plan (cosmos-db, deployment-api and ifiduk-app) create a terraform.tfvars file.

5. For the cosmos-db plan the terraform.tfvars file should look like this: (updated to your environment)

   ```
   project_name = "Enter your project name"
   environment  = "Enter your env i.e. prod, dev, test"
   region       = "Enter the Azure region"
   prefix       = "ifiduk-"
   ```

6. For the deployment-api the terraform.tfvars file should look like this: (updated to your environment)

   ```
   project = "Enter your project name for the deployment API"
   environment  = ""
   location       = "Enter your env i.e. prod, dev, test"
   prefix       = "ifiduk-"
   azure_web_jobs_storage = "Enter the Azure Service Bus connection string"
   service_bus_connection_string = "Enter the Azure Service Bus connection string"
   mongodb_connection_string = "Enter your MongoDB connection string"
   ```

7. For ifiduk-app the terraform.tfvars file should look like this: (updated to your environment)

   ```
   Coming soon
   ```

8. For each plan run

   ```
   terraform validate
   terraform plan
   terraform apply
   ```

9. To delete the deployment, for each plan run
   ```
   terraform destroy
   ```

## Features

- Terraform
- Azure Terraform provider

## License

This project uses the MIT license

## Contributing

Pull requests are welcome

## Questions

Checkout my GitHub [profile](https://github.com/harishnarain)

Please feel free to email at: <Harish.Narain@microsoft.com>
