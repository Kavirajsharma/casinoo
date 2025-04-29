pipeline {
    agent any

    stages {
        stage('Pull from GitHub') {
            steps {
                echo 'Code pulled from GitHub repository.'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("my-static-site")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Stop and remove any running container with same name
                    sh 'docker rm -f static-site || true'

                    // Run the new container
                    sh 'docker run -d -p 8080:80 --name static-site my-static-site'
                }
            }
        }
    }
}
