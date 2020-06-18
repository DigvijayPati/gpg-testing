pipeline {
    agent any
    environment {
        gpg_secret = credentials("gpg-pub-key-frank")
    } 
    stages { 
        stage("verify tag"){
            steps{
                sh """
                    gpg --import $gpg_secret
                """
            }
        }
   }
}
