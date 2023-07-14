pipeline {
    environment {
        registry = 'jenk_deneme/ml_model'
        dockerImage = ''
    }
    agent any
    stages {
        stage("Build Docker Image") {
            agent any
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
       stage("Test") {
            steps {
                echo "Test stage"
            }
        }
        stage("Release") {
            steps {
                echo "Release stage."
            }
        }
    }
}