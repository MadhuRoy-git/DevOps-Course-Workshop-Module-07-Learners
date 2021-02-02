pipeline {
    agent any
    environment {
        DOTNET_CLI_HOME = "/tmp/DOTNET_CLI_HOME"
    }
    stages {
        stage('Backend') {
            agent {
                docker { image 'mcr.microsoft.com/dotnet/sdk:5.0' }
            }
            stages{
                stage('Build') {
            
            steps {
                echo 'Building..'
                sh 'dotnet build'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'dotnet test'
            }
        }
            }
        }
        
        stage('Build Typescript') {
            agent {
                docker { image 'node:14-alpine' }
            }
            steps {
                echo 'Building Typescript..'
     
                
                dir("DotnetTemplate.Web"){
                    sh 'npm install'
                    sh 'npm run build'
                    sh 'npm run lint'
                    sh 'npm t'
                }
            }
        }
    }
}