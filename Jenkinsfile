pipeline {
    agent any



stages{

		stage('init'){
            steps {
				echo 'intializing.....'
               
            }
            
        }
		
        stage('Build'){
            steps {
				sh 'mvn clean install'
               
            }
            
        }
		 stage('upload to artifactory'){
            steps{
                rtUpload (
                    serverId: 'JfrogRepository',
                    spec: '''{
                        "files": [
                            {
                                "pattern": "./target/*fatca*.jar",
                                "target": "libs-snapshot-local/"
                            }
                                ]
                        }''',
 
                    // Optional - Associate the uploaded files with the following custom build name and build number,
                    // as build artifacts.
                    // If not set, the files will be associated with the default build name and build number (i.e the
                    // the Jenkins job name and number).
                    buildName: 'JFrog',
                    buildNumber: env.BUILD_NUMBER )
            }
        }
		
		  stage('Docker Conatinerixation'){
            
            steps {
                sh 'docker build . -t fatcaapp1'             
            }
        }
		
		stage('push image to docker hub'){
            
            steps {
                sh 'docker login   -u sk6785 -p Sandeep@123'
				sh 'docker tag fatcaapp1 sk6785/fatcaapp:2.0'
				sh 'docker push  sk6785/fatcaapp:2.0'
				
            }
        }
		
		

	}
}
