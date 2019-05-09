Module 2: Customize Template Values
===========================

Modify the template files to match your environment. 

Instructions:

#. Navigate to ``f5-cicdlab/terraform-ansible-aws/F5_Standalone_1Nic/terraform/variables.tf`` and make modifications to all variable defaults as necessary

    - For "AllowedIPs1" and "AllowedIPs2", you can specify both your client public IP and the public IP of your ubuntu instance. 

#. Navigate to ``f5-cicdlab/terraform-ansible-aws/F5_Standalone_1Nic/ansible/playbooks/group_vars/all`` and modify the value of the ``ansible_ssh_private_key_file`` variable. 

    .. Note::
          Ensure that the user "Jenkins" has read access to this key file or else you may get "Permission denied" errors. 

This completes the customization of your template files. 

