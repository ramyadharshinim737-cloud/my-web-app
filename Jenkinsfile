pipeline {
    agent any
    stages {
        stage('Pull Code') {
            steps {
                git branch: 'main', url: 'https://github.com/ramyadharshinim737-cloud/my-web-app.git'
            }
        }
        stage('Build Image') {
            steps {
                // Ippo permission denied error varaadhu
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
