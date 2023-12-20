pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'ap-south-1'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform script repository
                git branch: 'feature/ec2instance', changelog: false, credentialsId: 'git-credentials', poll: false, url: 'https://github.com/svsdevops/Terraform-code1.git'
            }
        }


        stage('Terraform Plan') {
            steps {
                script {
                    // Change to the directory where your Terraform files are located
                    sh pwd
                }
            }
        }
    }

}

