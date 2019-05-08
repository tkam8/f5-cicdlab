/* import shared library */
// @Library('jenkins-shared-library')_

pipeline {
    agent any

//    tools {
//        org.jenkinsci.plugins.terraform.TerraformInstallation "0.11.13"
//        org.jenkinsci.plugins.ansible.AnsibleInstallation "2.7.10"
//    }
    stages {
        stage('Init') {
            steps {
                echo 'Initializing!!'
            }
        }
          stage('Initializing terraform') {
              steps {
                  dir("terraform-ansible-aws/F5_Standalone_1Nic/terraform") {
                      echo 'Running Terraform init'
                      echo "sh pwd"
                      echo "PATH : ${env.PATH}"
                      sh 'terraform init -input=false'
                  }
               }
           }
          stage('Applying terraform') {
              steps {
                  withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'awscreds', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                      dir("terraform-ansible-aws/F5_Standalone_1Nic/terraform") {
                          echo 'Running Terraform apply'
                          sh 'terraform apply -input=false -auto-approve'
                       //  sh 'terraform destroy -force'
                      }
                   }
              }
          }
          stage('Ansible Playbook1') {
              steps {
                  echo 'Running ansible playbook plugin'
                  ansiblePlaybook(
                      playbook: '/var/lib/jenkins/workspace/terry-pipeline1/terraform-ansible-aws/F5_Standalone_1Nic/ansible/playbooks/site.yml',
                      inventory: '/var/lib/jenkins/workspace/terry-pipeline1/terraform-ansible-aws/F5_Standalone_1Nic/ansible/playbooks/inventory/hosts',
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
