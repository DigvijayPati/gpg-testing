pipeline {
    agent { dockerfile true }
    environment {
        gpg_keychain = credentials("gpg-keychain-dj")
    }
    stages { 
        stage("Import GPG Keys") {
            steps {
                sh """
                    gpg2 --keyring $gpg_keychain  --export | gpg2 --import 
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
