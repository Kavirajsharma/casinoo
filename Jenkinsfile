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
                    bat 'docker rm -f static-site || true'

                    // Run the new container
                    bat 'docker run -d -p 5000:80 --name static-site my-static-site'
                }
            }
        }
    }
}
