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
                sh "aws configure set region $AWS_DEFAULT_REGION"
                sh "aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID"
                sh "aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY"
                sh "aws s3 ls"
                
                // withAWS(region:'us-east-1',credentials:'AKIASTLS45Z7V2IG5OWI'){
                   // sh 'echo "Uploading content with AWS creds"'
                //    sh 'aws s3 ls'


               // }
            }
        }
        stage("Release") {
            steps {
                echo "Release stage"
            }
        }
    }
}
