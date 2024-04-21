pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = 'us-east-1'
    }
    stages {
        stage('Checkout SCM') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/kishore-vhs/Delete_Later.git']])
            }
        }
        stage ('List Files') {
            steps {
                sh 'ls -alrt'
            }
        }
        stage ('Terraform INIT') {
            steps {
                sh 'terraform init'
            }
        }
        stage ('terraform FMT && terraform validate && terraform plan') {
            steps {
                sh 'terraform fmt && terraform validate && terraform plan -out plan.txt'
            }
        }
        // stage ('Terraform apply, Create EKS Cluster') {
        //     steps {
        //         sh 'terraform apply --auto-approve'
        //     }
        // }
    }
}
