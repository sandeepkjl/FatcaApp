pipeline {
    agent any



stages{
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

    stage('Deployment'){
        steps {
            bat 'xcopy C:\\Users\\Dell\\.jenkins\\workspace\\CrestApplication\\target\\fatca-app-0.0.1-SNAPSHOT.jar C:\\jtest'
        }

    }

}
}
