pipeline {
    agent any
    
    stages {
        stage("Test Echo") {
            agent any
            steps {
                echo "building the application"
            }
        }
       stage("AWS Test") {

            steps {
                echo "AWS Test"
                withAWS(credentials: '2379edff-41ee-40ce-a926-13b229b18bd9', region: 'us-east-1'){
                    sh 'aws s3 ls'
                }

            }
        }
        stage("build docker image") {
            steps {
                echo "Deploy CF Template"
                withAWS(credentials: '2379edff-41ee-40ce-a926-13b229b18bd9', region: 'us-east-1'){
                    sh "aws cloudformation create-stack --stack-name jenkins-stack --template-body file://jenkinscdk.template.json --region 'us-east-1'"
                }
            }
        }
    }
}


