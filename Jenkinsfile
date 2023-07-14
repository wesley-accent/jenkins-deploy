pipeline {
    agent any
    stages {
        stage("Install Yarn") {
            agent any
            steps {
                echo "installing yarn"

                script{
                    def test = 2 + 2 > 3 ? 'cool' : 'not cool'
                    echo test 
                }
                nodejs('NodeJS-20.4.0'){
                    sh 'yarn install'
                }
            }
        }
       stage("Upload to AWS") {
            steps {
                echo "Starting AWS Deploy"
                // withAWS(region:'us-east-1',credentials:'AKIASTLS45Z7V2IG5OWI'){
                    sh 'echo "Uploading content with AWS creds"'
                    sh 'aws s3 ls'


                }
            }
        }
        stage("Release") {
            steps {
                echo "Release stage"
            }
        }
    }
}
