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
                    git verify-commit 8225f09a95477f8bfe87d1e0cecf6df4ea6de66d
                """
            }
        }
   }
}
