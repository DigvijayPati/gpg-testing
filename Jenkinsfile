pipeline {
    agent any
    stages { 
        stage("verify tag"){
            steps{
                sh """
                    gpg --list-keys
                """
            }
        }
   }
}
