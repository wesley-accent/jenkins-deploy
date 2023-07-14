pipeline {

    agent any
    stages {
        stage("Build Docker Image") {
            agent any
            steps {
                echo "building the application"

                script{
                    def test = 2 + 2 > 3 ? 'cool' : 'not cool'
                    echo test 
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