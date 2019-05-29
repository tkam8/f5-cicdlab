/* import shared library */
// @Library('jenkins-shared-library')_

pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                echo 'Initializing!!!'
            }
        }
        stage('Initializing terraform') {
            steps {
                dir("terraform-ansible-aws/F5_Standalone_1Nic/terraform") {
                    echo 'Running Terraform init'
                    echo "WORKSPACE : ${workspace}"
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
                     //   sh 'terraform destroy -force'
                    }
                }
            }
        }
        stage('Ansible Playbook1') {
            steps {
                echo 'Running ansible playbook plugin verbose'
                ansiblePlaybook(
                    playbook: '/var/lib/jenkins/workspace/terry-pipeline1/terraform-ansible-aws/F5_Standalone_1Nic/ansible/playbooks/site.yml',
                    inventory: '/var/lib/jenkins/workspace/terry-pipeline1/terraform-ansible-aws/F5_Standalone_1Nic/ansible/playbooks/inventory/hosts',
                    vaultCredentialsId: 'ansiblevaultpasswd',
                    extras: '-vv'
                )
            }
        }
    }
    post {
        success {
            slackSend (color: '#00FF00', message: "SUCCESS! _Grab a beer_: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        }
        failure {
            slackSend (color: '#FF0000', message: "FAILED! _Practice makes perfect_: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})") 
        }
    }
}

