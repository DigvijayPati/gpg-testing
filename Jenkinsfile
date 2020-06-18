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
                    git verify-commit 8e716c2019dc0cff604ea51f498c3a4fa79a9ffb
                """
            }
        }
   }
}
