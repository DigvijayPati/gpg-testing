pipeline {
    agent any 
    environment {
        gpg_secret = credentials("gpg-secret")
        gpg_trust = credentials("gpg-ownertrust")
        gpg_passphrase = credentials("gpg-passphrase")
    }
    stages { 
        stage("Import GPG Keys") {
            steps {
                sh """
                    gpg --batch --import $gpg_secret
                    gpg --import-ownertrust $gpg_trust
                """
            }
        }
        stage("verify tag"){
            steps{
                sh """ 
                    git verify-tag certified/safety_module/v1.0
                """
            }
        }
   }
}
