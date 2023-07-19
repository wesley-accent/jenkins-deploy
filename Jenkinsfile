pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION='us-east-1'
        AWS_ACCESS_KEY_ID='AKIASTLS45Z7V2IG5OWI'
        AWS_SECRET_ACCESS_KEY='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'
    }
    
    stages {
        stage("Install sudo") {
            agent any
            steps {
                echo "building the application"
                // sh 'apt-get install sudo -y'
            }
        }
       stage("Create S3 Bucket") {

            steps {
                echo "Installing AWS Cli"
                            
                
            }
        }
        stage("build docker image") {
            steps {
                echo "Release stage"
                // script{
                //     sh 'docker build -t new-aws/node .'
                // }
            }
        }
    }
}


