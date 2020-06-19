pipeline {
    agent { dockerfile true }
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
