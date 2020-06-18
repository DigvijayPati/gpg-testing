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
                    git verify-commit c30df378d445be82b806f5523781e51114645596
                """
            }
        }
   }
}
