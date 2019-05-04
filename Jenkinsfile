/* import shared library */
// @Library('jenkins-shared-library')_

pipeline {
    agent any
    tools {
        org.jenkinsci.plugins.terraform.TerraformInstallation "Jenkins-terraform"
        org.jenkinsci.plugins.ansible.AnsibleInstallation "2.7.10"
    }
    stages {
        stage('Init') {
            steps {
                echo 'Initializing!!'
            }
        }
          stage('Initializing terraform') {
              steps {
                  echo 'Running Terraform init'
                  echo "PATH : ${env.PATH}"
                  sh 'sudo terraform init -input=false'
              }
          }
          stage('Applying terraform') {
              steps {
                  echo 'Running Terraform apply'
                  sh 'terraform apply -input=false -auto-approve'
              }
          }
          stage('Ansible Playbook1') {
              steps {
                  echo 'Running ansible playbook plugin'
                  ansiblePlaybook(
                      playbook: '/home/ubuntu/tfansible/f5-cicdlab/terraform-ansible-aws/F5_Standalone_1Nic/ansible/playbooks/site.yml',
                      inventory: '/home/ubuntu/tfansible/f5-cicdlab/terraform-ansible-aws/F5_Standalone_1Nic/ansible/playbooks/inventory/hosts',
                      credentialsId: 'ansiblevaultpasswd'
                  )
              }
          }
//        stage('AWS') {
//            steps {
//                echo 'Here is for AWS!!'
//		sh 'ansible-playbook /var/lib/jenkins/workspace/SelfService/SelfService/AWS/create_ec2_dns.yml --vault-password-file=/var/lib/jenkins/workspace/SelfService/SelfService/AWS/aws_keys.yml'
//            }
//        }
//        stage('Azure') {
//            steps {
//                echo 'Here is an Azure!!'
//		sh 'ansible-playbook /var/lib/jenkins/workspace/SelfService/SelfService/Azure/stepbystep/create_all.f5.yml'
//            }
//        }
//        stage('On-Prem') {
//            steps {
//                echo 'Deploying!!!!'
//            }
//        }
    }
}

// post {
//         always {
	    /* Use slackNotifier.groovy from shared library and provide current build result as parameter */   
//             slackNotifier(currentBuild.currentResult)
//             cleanWs()
//         }
//     }
// }
