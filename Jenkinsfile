pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'javac Jenkins.java'
            }
        }

        stage('Test') {
            steps {
                sh 'java Jenkins'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t jenkins-demo .'
            }
        }

        stage('Docker Run/Deploy') {
            steps {
                sh 'docker rm -f jenkins-demo-container || true'
                sh 'docker run -d --name jenkins-demo-container jenkins-demo'
            }
        }
    }
}

