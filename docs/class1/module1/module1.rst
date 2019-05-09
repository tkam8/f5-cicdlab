Module 1: AWS IAM Setup
===========================

AWS will be used as the platform to deploy your Jenkins server and F5 BIG-IP and backend servers. 

Reference: 
https://docs.aws.amazon.com/systems-manager/latest/userguide/automation-jenkins.html

Instructions:

#. Access the **IAM console** in AWS > **Users** > **Add User**

#. Specify **name** > access type as **Programmatic Access** 

#. For permissions, select **Attach existing policies directly** and choose **AdministratorAccess**

#. Review, then create user. Be sure to copy the Access and Secret keys to a safe location before moving to the next step

This completes AWS IAM setup. You now have an AWS user that will be used to programmatically create resources. 
