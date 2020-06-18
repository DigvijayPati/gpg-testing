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
                    gpg --list-secret-keys
                    gpg --list-keys
                    git tag
                    git verify-tag certified/safety_module/v1.0
                """
            }
        }
   }
}
