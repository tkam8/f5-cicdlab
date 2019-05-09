Module 4: Tool and Credential Configuration
===========================

In this next step, we will configure the GitHub, Slack, and Jenkins tools.

Instructions:

#. Access your GitHub account > in the top right corner, click your profile > **Settings** > **Developer settings** > **Personal access tokens** > click **Generate new token** > enter in your password > enter in description such as "Jenkins token" > check **admin:repo_hook** > **Generate token** > save token in a safe location before moving on

#. Access your Slack administration page > **Manage** > **Apps** > Find and install **Jenkins CI** > Click **Add Configuration** > Select channel you want to post to, description, and save the token in a safe location before moving on

#. Log into your ubuntu command line and navigate to the ``f5-cicdlab/terraform-ansible-aws/F5_Standalone_1Nic/ansible/playbooks/group_vars/F5_systems/`` directory and create a file called ``f5_vault`` with below values:

    .. code-block:: none
         VAULT_ADMIN_PASSWORD: <password for your BIG-IP>
         VAULT_AWS_ACCESSKEY: <aws access key>
         VAULT_AWS_SECRETKEY: <aws secret key>

#. Run below command to encrypt the f5_vault file using a long, strong password (at least 10 characters, mixed case, and symbols)

    - ``ansible-vault encrypt .../F5_systems/f5_vault``

#. Access Jenkins UI > **Credentials** > click **(global)** > **Add Credentials** > configure below credentials:

    - GitHub Token (for use by the GitHub plugin)
        - Kind: **Vault Github Token Credential**
        - Scope: **Global**
        - Personal Access Token: <enter personal token obtained from GitHub earlier>
        - ID: short name for this token
        - Description: short description
    - GitHub Credentials (for use by the Pipeline project)
        - Kind: **Username with password**
        - Scope: **Global**
        - Username: your GitHub Username
        - Password: enter in Personal Access Token obtained from GitHub earlier
        - ID: short name for this token
        - Description: short description
    - AWS Credentials
        - Kind: **AWS Credentials**
        - Scope: **Global**
        - ID: short name for this credentials
        - Description: short description
        - Access Key ID: enter in access key ID obtained from AWS earlier
        - Secret Access Key: enter in secret access key obtained from AWS earlier
    - Ansible Vault Password
        - Kind: **Secret text**
        - Scope: **Global**
        - Secret: enter in the password you used for Ansible vault earlier
        - ID: short name for this token
        - Description: short description
    - Slack Token
        - Kind: **Secret text**
        - Scope: **Global**
        - Secret: <enter in the token obtained from Slack earlier>
        - ID: short name for this token
        - Description: short description

#. Access Jenkins UI > **Manage Jenkins** > **Configure System**

#. In **Global properties** > check **Environment variables** and configure below

    - Name: PATH+EXTRA
    - Value: /bin/terraform

#. In **GitHub** > **GitHub Servers** > configure below

    - Name: <your repository URL> 
        - e.g. https://github.com/tkam8
    - API URL: https://api.github.com
    - Credentials: Select the GitHub token credential you create below
        - Click **Add** > **Jenkins** > Kind= **Vault Github Token Credential** > enter in your GitHub token created earlier in the **Personal Access Token** field > enter in ID and description > click **Add**
    - Reference: https://support.cloudbees.com/hc/en-us/articles/234710368-GitHub-User-Scopes-and-Organization-Permission
    - Reference: https://wiki.jenkins.io/display/JENKINS/GitHub+Plugin

#. In **Global Slack Notifier Settings** > enter in your slack URL > for **Integration Token Credential ID**, click Click **Add** > **Jenkins** > Kind= **Secret text** > enter in your Slack secret > select this credential > select desired **Channel or Slack ID**

    - Reference: https://medium.com/appgambit/integrating-jenkins-with-slack-notifications-4f14d1ce9c7a

#. Access Jenkins UI > **Manage Jenkins** > **AWS** > configure as below:

    - Region: Select your Region
    - Amazon Credentials: select the AWS credentials you created earlier

