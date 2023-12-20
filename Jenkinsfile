pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'ap-south-1'
        AWS_ACCESS_KEY_ID     = credentials('Access_key')
        AWS_SECRET_ACCESS_KEY = credentials('SecretKey')
        //AWS_DEFAULT_REGION    = sh(script: 'aws configure get region', returnStdout: true).trim()
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform script repository
                cleanWs()
                git branch: 'feature/ec2instance', changelog: false, credentialsId: 'git-credentials', poll: false, url: 'https://github.com/svsdevops/Terraform-code1.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    dir('ec2-instances') {
                        sh 'terraform init'
                    }
                }
            }
        }


        stage('Terraform Plan') {
            steps {
                script {
                    // Change to the directory where your Terraform files are located
                   // def currentDir = pwd()
                    //echo "Current working directory: ${currentDir}"
                    dir('ec2-instances') {
                         sh 'terraform plan -out=tfplan'
                
                }
            }
        }
    }

}
}

