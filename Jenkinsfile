pipeline {
    agent {
        docker { image 'node:14-alpine' }
    }

    agent {
        docker { image 'node:14-alpine' }
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