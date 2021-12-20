pipeline {
    agent any
    stages {
        stage("checkout code") {
            steps {
               echo "Running in docker"
	           git branch: 'master',
		           //credentialsId: 'Akshata_Github',
                   url: 'https://github.com/athorat940/jenkins-pipeline-tutorial.git'
               sh "ls -la"
            }
        }
        stage("build and test the project") {
            
                   steps {
                      sh '''
                      ls
                      chmod -R 777 dice.sh
                      chmod -R 777 create_issue.sh
                      chmod -R 777 close_issue.sh
                      ./close_issue.sh
                      ./dice.sh
                      '''
                      
               
               }
            }
        stage("Jenkins Post data"){
            steps{
                sh 'curl --user admin:11748f61c89f01f824813173a5223b3e4e -H "Accept: application/json+v3" http://Jenkins-Fourkeys-910524825.us-east-2.elb.amazonaws.com/job/test-pipeline/lastBuild/api/json -o myresponse.json'
			    sh 'cat myresponse.json'
			    sh 'curl -i -X POST https://event-handler-qlzk4qz7wa-uc.a.run.app -H "Content-Type: application/json" --data-binary "@myresponse.json"'
            }
        }    
        }
    }
