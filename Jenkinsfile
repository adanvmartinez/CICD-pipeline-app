
//Author: Adan Martinez
//Thus automates deployment of infrastructure using Jenkins.
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

        //Runs unit test apps
        stage("Test App"){
            steps{
                sh 'echo python3 app/testadan.py app/testindex.py'
                echo 'Ran tests...'
            }
        }
        //Checks for any formatting errors in terreform syntax
        stage('Terraform Format Check') {
            steps{
                sh 'terraform fmt'
            }
        }
        //Initializes terraform files
        stage('Terraform Init') {
            steps{
                sh 'terraform init'
            }
        }
        //Validate scripts
        stage('Terraform Validate') {
            steps{
                sh 'terraform validate'
            }
        }
        //Make sure we have access to AWS and start terraform planning
        stage('Terraform Plan'){
            steps{
                withAWS(credentials:'jenkins-test-app-credentials',region:'us-west-1'){
                    //sh 'aws iam list-users'
                    sh 'terraform plan -input=false -out tfplan'
                    //sh 'terraform show -no-color tfplan > tfplan.txt'
                    //sh 'terraform apply'
                    
                }
            }
        }
    }
        
}
