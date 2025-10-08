pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                echo 'Installing dependencies...'
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'npm test -- --passWithNoTests'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the app...'
                // Optional: if you have any build step for frontend
            }
        }

         stage('Deploy') {
            steps {
                echo 'Deploying the app...'
                sh 'node app.js'
    }
}
       sh 'node app.js'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
