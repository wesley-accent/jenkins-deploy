pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION='us-east-1'    
    }
    
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
       stage("Create S3 Bucket") {

            steps {
                echo "Test stage"
            }
        }
        stage("Release") {
            steps {
                echo "Release stage"
            }
        }
    }
}
