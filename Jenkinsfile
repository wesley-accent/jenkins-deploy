pipeline {
    agent any
    stages {
        stage("Install Yarn") {
            agent any
            steps {
                echo "building the application"
                script{
                    def test = 2 + 2 > 3 ? 'cool' : 'not cool'
                    echo test 
                }
                nodejs('NodeJS-20.4.0'){
                    sh 'yarn install'
                }
            }
        }
       stage("Build Docker Image") {
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