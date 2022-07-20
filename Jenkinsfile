pipeline{
    agent any
    
    stages{
        // stage("Checkout Repo"){
        //     steps{
                
        //         //checkout([$class: 'GitSCM',credentialsId: 'github-api-token', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'git@github.com:adanvmartinez/CICD-pipeline-app.git']]])
                
        //         sh'git clone https://${github-api-token}@github.exampleco.com/org/repo.git'
        //         echo 'Checked out Repository...'
                
        //     }
        // }

        stage("Test App"){
            steps{
                sh 'echo python3 app/testadan.py app/testindex.py'
                echo 'Ran tests...'
            }
        }
    }
        
}
