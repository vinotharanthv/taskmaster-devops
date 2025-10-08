pipeline {
    agent any

    environment {
        NODE_ENV = 'production'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code from Git...'
                git url: 'https://github.com/vinotharanthv/taskmaster-devops.git', branch: 'main'
            }
        }

        stage('Install Dependencies') {
            steps {
                echo 'Installing npm dependencies...'
                sh 'npm install'

            }
        }

        stage('Build') {
            steps {
                echo 'Building the app...'
                // If you have a build script, uncomment this
                // sh 'npm run build'
                echo 'No build script defined, skipping build step.'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'npm test -- --passWithNoTests'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Starting the app...'
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
