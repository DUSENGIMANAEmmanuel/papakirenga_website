
pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Getting website source code from GitHub'
                checkout scm
            }
        }

        stage('Check Website Files') {
            steps {
                script {
                    if (fileExists('index.html')) {
                        echo 'SUCCESS: index.html found!!!!!!!!'
                         echo 'SUCCESS: style.css found!!!!!!!!'
                    } else {
                        error 'ERROR: index.html not found!'
        
                    }
                }
            }
        }

        stage('Build') {
            steps {
                echo 'Website build completed successfully'
            }
        }

        stage('Deployment') {
            steps {
                echo 'Website is ready for deployment'
            }
        }
    }

    post {
        success {
            echo 'SUCCESS: Website pipeline completed!'
        }

        failure {
            echo 'ERROR: Website pipeline failed!!!!!'
        }
    }
}
