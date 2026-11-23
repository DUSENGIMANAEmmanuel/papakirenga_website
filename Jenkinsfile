
pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Getting source code from GitHub'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t papakirenga-website:latest .'
            }
        }

        stage('Stop Old Container') {
            steps {
                bat 'docker rm -f papakirenga-website 2>NUL || exit /b 0'
            }
        }

        stage('Deploy Website') {
            steps {
                bat 'docker run -d --name papakirenga-website -p 8081:80 papakirenga-website:latest'
            }
        }

        stage('Verify Deployment') {
            steps {
                echo 'Website deployment completed!'
                echo 'Open http://localhost:8081'
            }
        }
    }

    post {
        success {
            echo 'SUCCESS: Website is running in Docker!'
        }

        failure {
            echo 'ERROR: Deployment failed!'
        }
    }
}
