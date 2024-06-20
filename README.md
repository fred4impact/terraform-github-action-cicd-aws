# Terraform GitHub Actions CI-CD AWS

This project involves creating AWS infrastructure to deploy a web server using Infrastructure as Code (IaC) with Terraform modules and establishing a CI/CD pipeline with GitHub Actions to automate the deployment process upon any changes.
## Project Overview

The main objectives of this project were to:

- Set up and configure Terraform for infrastructure management.
- Write and manage Terraform modules to define resources like VPC, subnets, security groups, EC2 instances, and application load balancers across multiple availability zones.
- Create a CI/CD pipeline using GitHub Actions to automatically trigger builds and deployments when changes are pushed to the repository.

  ## Set Up Terraform

    - Install Terraform on your local machine.
    - Configure AWS credentials for Terraform.

##  Write Terraform Modules

    - Define the Terraform modules to manage resources such as:
        - VPC
        - Subnets
        - Security Groups
        - EC2 Instances
        - Application Load Balancer across different availability zones

## Initialize and Apply Terraform Code

## Set Up GitHub Repository

    - Create a GitHub repository for storing the Terraform code.
    - Add essential files like README.md, .gitignore, and others.

## Configure GitHub Actions

    - Set up GitHub Actions workflows to automate the deployment of Terraform code.
    - Manage secrets and configure workflow triggers in the GitHub repository settings.
    - Example GitHub Actions workflow configuration (.github/workflows/deploy.yml

## Deploy and Monitor

    - Push the Terraform code to the GitHub repository.
    - Trigger the GitHub Actions workflow by pushing changes to the repository.
    - Monitor the progress of the workflow and verify the successful deployment of the VPC infrastructure.


## Prerequisites

    - AWS account with appropriate permissions
    - Terraform installed locally
    - GitHub account with a repository created for this project

## Challenges and Solutions

    State Management: Ensured consistent state management with remote backend.
    Security: Managed IAM roles and policies to follow the principle of least privilege.
    Scalability: Designed infrastructure to be scalable and handle increased load.

## Outcomes and Learnings

    Successfully automated the provisioning and deployment processes using Terraform and GitHub Actions.
    Gained hands-on experience with AWS services and Terraform modules.
    Enhanced understanding of CI/CD pipelines and continuous deployment practices.

## Conclusion

  This project provided valuable experience in building and managing cloud infrastructure using Infrastructure as Code and automating deployment workflows with CI/CD pipelines. 
  The skills and knowledge gained through this project are crucial for any modern DevOps role and will be instrumental in future projects involving cloud infrastructure and automation.
    
