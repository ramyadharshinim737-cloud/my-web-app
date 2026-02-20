pipeline {
    agent any
    stages {
        stage('Pull Code') {
            steps {
                git branch: 'main', url: 'https://github.com/ramyadharshinim737-cloud/my-web-app.git'
            }
        }
        stage('Fix Docker Permission') {
            steps {
                // Jenkins container kulla irundhe socket permission-ah mathurom
                sh 'sudo chmod 666 /var/run/docker.sock || true'
            }
        }
        stage('Build Image') {
            steps {
                sh 'docker build -t simple-frontend-app .'
            }
        }
        stage('Deploy Site') {
            steps {
                sh 'docker stop my-frontend || true'
                sh 'docker rm my-frontend || true'
                sh 'docker run -d -p 80:80 --name my-frontend simple-frontend-app'
            }
        }
    }
}
