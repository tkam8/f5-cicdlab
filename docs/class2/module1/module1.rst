Module 1: Create Jenkins Pipeline
===========================

We will create a new Pipeline project that is defined in a Jenkinsfile written in Groovy syntax. While an understanding of Groovy is helpful, it is not required to work with Pipeline.

Reference: https://jenkins.io/doc/book/pipeline/getting-started/#defining-a-pipeline-in-scm

Instructions:

#. Access Jenkins UI > click **New Item** > enter in a project name > select **Pipeline** > click **OK**

#. In the **General** tab, enter in a description

#. In the **Build Triggers** section, check **GitHub hook trigger for GITScm polling** 

#. In the **Pipeline** section > **Definition** > select **Pipeline script from SCM** > Select **Git** as the **SCM** > enter in your Repository URL > for **Credentials**, select the GitHub credentials you created earlier > enter in ***/master* for **Branch Specifier** > enter in **Jenkinsfile** for **Script Path**  > click **Save**

This completes setup of your Jenkins pipeline project.