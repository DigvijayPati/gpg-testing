pipeline {
    agent any
    stages { 
        stage("verify tag"){
            steps{
                sh """
                    gpg --delete-secret-keys --always-trust 3C40CE78198DAB9B723091BE95129EA63123958E
                    gpg --delete-key --always-trust 3C40CE78198DAB9B723091BE95129EA63123958E
                    gpg --list-keys
                """
            }
        }
   }
}
