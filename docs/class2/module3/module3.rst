Module 3: Initiate a GitHub Commit
===========================

Make a commit to your GitHub repository to trigger the Jenkins webhook, which in turn initiates the pipeline. 

Instructions: 

#. Since you have already modified some files in locally, you can commit those changes to your remote repository

    - ``git add *``
    - ``git status``
    - ``git commit -m "making first commmit"``
    - ``git push origin master`` (enter in your GitHub private access token for the password when prompted)

#. Access the Jenkins UI > click on your pipeline project > confirm the triggered job status

    - You can click on the Job number and confirm console output as needed

#. After the job successfully completes, confirm your Slack notification

#. Confirm the new resources created in AWS

#. Access the public IP of your newly created BIG-IP on port 443 to confirm access to your backend server via the virtual server. 

    - https://<BIG-IP Public IP>

This completes the CICD lab. 