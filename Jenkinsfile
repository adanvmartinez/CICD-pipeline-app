pipeline{
    agent any
    
    stages{
        stage("Checkout Repo"){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/adanvmartinez/python-unittest-app.git']]])
                echo 'Checked out Repository...'
            }
        }
        
}
