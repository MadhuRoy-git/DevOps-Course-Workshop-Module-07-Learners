pipeline {
    agent any
    environment {
        DOTNET_CLI_HOME = "/tmp/DOTNET_CLI_HOME"
    }
    stages {
        stage('Build') {
            agent {
                docker { image 'mcr.microsoft.com/dotnet/sdk:5.0' }
            }
            steps {
                echo 'Building..'
                sh 'dotnet build'
            }
        }
        stage('Test') {
            agent {
                docker { image 'mcr.microsoft.com/dotnet/sdk:5.0' }
            }
            steps {
                echo 'Testing..'
                sh 'dotnet test'
            }
        }
        stage('Build Typescript') {
            agent {
                docker { image 'node:14-alpine' }
            }
            steps {
                echo 'Building Typescript..'
                
                sh 'npm install'
                dir("DotnetTemplate.Web"){
                    sh "pwd"
                }
                echo '$pwd'
                sh 'npm run build'
                sh 'npm run lint'
                sh 'npm t'
            }
        }
    }
}