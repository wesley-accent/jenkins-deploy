pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION='us-east-1'
        AWS_ACCESS_KEY_ID='AKIAW4BDPYYIYPJCR75F'
        AWS_SECRET_ACCESS_KEY='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'
    }
    
    stages {
        stage("Install sudo") {
            agent any
            steps {
                echo "building the application"
            }
        }
       stage("Create S3 Bucket") {

            steps {
                echo "Crreating S3 bucket"

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


