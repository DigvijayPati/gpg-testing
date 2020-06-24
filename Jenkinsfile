pipeline {
    agent { dockerfile true }
    environment {
        gpg_keychain = credentials("gpg-keychain-dj")
    }
    stages { 
        stage("Import GPG Keys") {
            steps {
                sh """
                    gpg --keyring $gpg_keychain  --export | gpg --import 
                """
            }
        }
        stage("list gpg configuration inside build container"){
            steps{
                sh """
                    gpg --list-keys
                """
            }
        }
   }
}
