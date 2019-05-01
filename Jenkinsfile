/* import shared library */
// @Library('jenkins-shared-library')_

pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                echo 'Initializing!!'
            }
        }
        stage('AWS') {
            steps {
                echo 'Here is for AWS!!'
//		sh 'ansible-playbook /var/lib/jenkins/workspace/SelfService/SelfService/AWS/create_ec2_dns.yml --vault-password-file=/var/lib/jenkins/workspace/SelfService/SelfService/AWS/aws_keys.yml'
            }
        }
        stage('Azure') {
            steps {
                echo 'Here is an Azure!!'
//		sh 'ansible-playbook /var/lib/jenkins/workspace/SelfService/SelfService/Azure/stepbystep/create_all.f5.yml'
            }
        }
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
