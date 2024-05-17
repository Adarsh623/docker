pipeline{

	//agent {label 'linux'}
	agent any
	environment {
		DOCKERHUB_CREDENTIALS=credentials('adarsh623-docker')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/Adarsh623/docker.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t adarsh623/nodeapp_test:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push adarsh623/nodeapp_test:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}
}
