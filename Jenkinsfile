pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION='us-east-1'
        AWS_ACCESS_KEY_ID='AKIASTLS45Z7V2IG5OWI'
        AWS_SECRET_ACCESS_KEY='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'
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
               withAWS(region:'us-east-1') {
                   sh 'aws s3 ls'
               }
                echo "deploying AWS services"
                sh 'aws configure set region $AWS_DEFAULT_REGION'
            }
        }
        stage("Release") {
            steps {
                echo "Release stage"
            }
        }
    }
}
