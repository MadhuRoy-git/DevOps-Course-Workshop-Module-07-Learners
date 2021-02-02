pipeline {
    agent {
        docker { image 'node:14-alpine' }
        docker { image 'mcr.microsoft.com/dotnet/sdk:3.1' }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                dotnet build
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                dotnet test
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}