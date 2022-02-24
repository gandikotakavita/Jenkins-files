pipeline {
    agent any
    
    tools {
        terraform 'Terraform'
    }
    stages {
        stage ("checkout from git"){
            steps {
                git credentialsId: 'ce521b5a-36d0-41c0-a290-7fecfbe936af', url: ' https://github.com/gandikotakavita/Jenkins-files.git' 
            }
        }
        stage ("terraform init"){
            steps{
                 dir("layers"){
                    
                     sh 'terraform init'
                 }
            }
        }
        stage ("terraform apply"){
            steps{
                 dir("layers"){
                    
                     sh 'terraform apply --auto-approve'
                 }
            }
        }
    }
 }
