pipeline {

    agent any
    stages {
        stage("Build Docker Image") {
            agent any
            steps {
                echo "building the application"
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