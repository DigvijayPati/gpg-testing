pipeline {
    agent any 
    environment {
        gpg_secret = credentials("gpg-secret")
        gpg_trust = credentials("gpg-ownertrust")
        gpg_passphrase = credentials("gpg-passphrase")
    }
    stages { 
        stage("verify tag"){
            steps{
                sh """ 
                    git verify-tag certified/safety_module/v1.0
                """
            }
        }
   }
}
