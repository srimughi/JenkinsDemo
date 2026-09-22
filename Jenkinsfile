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
                bat 'javac Jenkins.java'
            }
        }

        stage('Test') {
            steps {
                bat 'java Jenkins'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t jenkins-demo .'
            }
        }

        stage('Docker Run/Deploy') {
            steps {
                bat 'docker rm -f jenkins-demo-container || exit /b 0'
                bat 'docker run -d --name jenkins-demo-container jenkins-demo'
            }
        }
    }
}

