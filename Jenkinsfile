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
                echo "Installing AWS Cli"
                sh 'curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"'
                sh 'unzip -o awscliv2.zip'
                sh './aws/install'                
                
            }
        }
        stage("Release") {
            steps {
                echo "Release stage"
            }
        }
    }
}
