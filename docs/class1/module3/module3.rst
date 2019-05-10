Module 3: Install Tools
===========================

In this guide, we will be using the root account. 

.. NOTE::
    AWS best practice is to use root only temporarily by deleting the root password after use. ``passwd –d root``

Instructions: 

#. Use SSH key to log into your ubuntu server, then set root password 

    - ``sudo su``
    - ``passwd root``

#. Install pre-requisite applications

    - ``apt-get update``
    - ``apt-get install build-essential checkinstall``
    - ``apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev``

#. Install python 2.7

    - ``wget https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tgz``
    - ``tar xzvf Python-2.7.16.tgz``
    - ``./configure --enable-optimizations``
    - ``make altinstall``
    - ``python2.7 -V`` 

#. Install python-pip

    - ``apt install python-pip``

#. Install Terraform

    - ``curl -O https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip``
    - ``mkdir /bin/terraform``
    - ``apt-get install unzip``
    - ``unzip filename -d /bin/terraform``
    - ``export PATH=$PATH:/bin/terraform``
    - ``terraform --version``

#. Install AWS CLI 

    - ``pip install awscli --user --upgrade``
    - ``aws --version``

#. Install Ansible

    - ``apt-get install software-properties-common``
    - ``apt-add-repository ppa:ansible/ansible``
    - ``apt update``
    - ``apt-get install ansible``
    - ``ansible --version``

#. Configure Ansible

    - ``nano /etc/ansible/ansible.cfg``
    - uncomment this line: ``host_key_checking = False``

#. Install f5-sdk library used by Ansible modules

    - ``install f5-sdk --upgrade``

#. Install Java

    - ``add-apt-repository ppa:webupd8team/java``
    - ``apt update``
    - ``apt install openjdk-8-jre-headless``

#. Install Jenkins

    - ``wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -``
    - ``sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'``
    - ``apt-get update``
    - ``apt-get install jenkins``
    - ``systemctl start jenkins``
    - ``systemctl status jenkins``

#. Get initial Jenkins password and connect to your Jenkins portal to change

    - ``cat /var/lib/jenkins/secrets/initialAdminPassword``
    - access <http://ubuntu_IP:8080>

#. Install Jenkins plugins at **Jenkins** > **Manage Jenkins** > **Manage Plugins** > **Available** tab > search and **Install without restart**

    - Amazon EC2 plugin
    - Ansible plugin
    - AWS Global Configuration Plugin
    - GitHub Authentication plugin
    - Global Slack Notifier Plugin
    - Pipeline GitHub Notify Step Plugin
    - Pipeline: AWS Steps
    - Pipeline: GitHub
    - Pipeline: GitHub Groovy Libraries
    - Terraform Plugin

#. Generate key used for accessing resources deployed in AWS. Store the private and public keys in a safe location

    - ``ssh-keygen -t rsa -b4096``

#. Create working directory in location of your choice (optional)

    - ``mkdir cicdlab``
    - ``cd cicdlab``

#. In your GitHub account, fork the below repository

    - ``https://github.com/tkam8/f5-cicdlab``

#. In your working directory, clone the master branch of your cicd lab repository to your your ubuntu instance

    - ``git clone -branch master https://<githubusername>@github.com/<githubreponame>/f5-cicdlab.git ``


This completes installation of required tools and plugins. 