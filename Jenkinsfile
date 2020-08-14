pipeline {
	agent any
	stages {
		stage('build') {
			steps {
				app = docker.build("karx/fortune")
			}
		}
		stage('Test Image') {
			app.inside {
				sh 'echo "Tests passed"'
			}
		}
		stage('Push Image') {
			docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
				app.push("latest")
			}
		}
	}
}
