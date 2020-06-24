pipeline {
    agent { dockerfile true }
    environment {
        gpg_secret = credentials("gpg-pub-key-frank")
    } 
    stages { 
        stage("Import GPG Keys") {
            steps {
                sh """
                    gpg --import $gpg_secret
                """
            }
        }
    stages { 
        stage("list gpg configuration inside build container"){
            steps{
                sh """
                    gpg --list-keys
                """
            }
        }
   }
}
}
