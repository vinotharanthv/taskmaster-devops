pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Fetch only the main repo
                git branch: 'main',
                    url: 'https://github.com/vinotharanthv/taskmaster-devops.git',
                    credentialsId: 'YOUR_CREDENTIAL_ID'
            }
        }

        stage('Install Dependencies') {
            steps {
                echo 'Installing dependencies...'
                sh 'npm install'  // adjust if Node.js
            }
        }

        stage('Build') {
            steps {
                echo 'Building the app...'
                sh 'npm run build'  // adjust according to your app
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'npm test'  // adjust according to your app
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the app...'
                sh 'echo "Deploy step - customize this"' 
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}

