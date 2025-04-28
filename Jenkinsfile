pipeline {
    agent any
    tools {
        nodejs 'node-18'  // (optional: if using Node.js)
    }
    stages {
        stage('Install') {
            steps { sh 'npm install' }
        }
        stage('Build') {
            steps { sh 'npm run build' }
        }
        stage('Deploy') {
            steps { echo 'Deploying app...' }
        }
    }
}
