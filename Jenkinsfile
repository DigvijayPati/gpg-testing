pipeline {
    agent any 
    stages { 
        stage("verify tag"){
            steps{
                sh """
                    gpg --import-ownertrust $gpg_trust 
                    git verify-tag certified/safety_module/v1.0
                """
            }
        }
   }
}
