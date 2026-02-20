pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ramyadharshinim737-cloud/my-web-app.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t simple-frontend-app .'
            }
        }
        stage('Deploy Website') {
            steps {
                sh 'docker stop my-frontend || true'
                sh 'docker rm my-frontend || true'
                sh 'docker run -d -p 80:80 --name my-frontend simple-frontend-app'
            }
        }
    }
}