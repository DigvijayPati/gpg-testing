pipeline {
    agent { dockerfile true }
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
