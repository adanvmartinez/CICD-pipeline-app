pipeline{
    agent any
    
    stages{
        stage("Checkout Repo"){
            steps{
                
                checkout([$class: 'GitSCM',credentialsId: 'github-api-token', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'git@github.com:adanvmartinez/CICD-pipeline-app.git']]])
                echo 'Checked out Repository...'
                
            }
        }
    }
        
}
