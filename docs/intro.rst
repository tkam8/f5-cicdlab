Welcome to F5 CICD Lab JPN Documentation!
==============================================

This guide contains instructions to build your own CI/CD lab. The current version will build all objects on AWS. 

Overall steps
-------------------
- Setup cloud environment (AWS)
- Deploy Ubuntu server
- Install tools
    - Terraform
    - AWS CLI
    - Ansible
    - f5-sdk
    - Jenkins
    - Git
- Configure Jenkins
    - User, webhooks, credentials
- Configure Terraform
- Configure Ansible
- Create cloud credentials
- Fork f5-cicdlab blueprint repository
    - make modifications to customize for your environment

Requirements
-------------------
- Active AWS account with admin permissions
- Slack channel access
- GitHub account


The content contained here adheres to a DevOps methodology and automation
pipeline.  All content contained here is sourced from the following GitHub
repository:

https://github.com/tkam8/f5-cicdlab

Bugs and Requests for enhancements are handled in two ways:

- Fork the Github Repo, fix or enhance as required and submit a Pull Request

  - https://help.github.com/articles/creating-a-pull-request-from-a-fork/

- Open an
  `Issue <https://github.com/tkam8/f5-cicdlab/issues>`_ within
  the repository.