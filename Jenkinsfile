pipeline {
    agent any
    stages{
        stage('Init'){
            steps {
                echo 'Initialization'

            }

        }

        stage('Build'){
            steps {
                bat 'mvn clean package'
            }
            post {
                success {
                    echo 'Now Archiving...'
                    archiveArtifacts artifacts: '**/target/*.jar'
                }
            }

        }
        

    }

}