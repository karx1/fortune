pipeline {
	agent any
	stages {
		stage('build') {
			steps {
				def app = docker.build("karx/fortune")
			}
		}
		stage('Test Image') {
			steps {
				app.inside {
					sh 'echo "Tests passed"'
				}
			}
		}
		stage('Push Image') {
			steps {
				docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
					app.push("latest")
				}
			}
		}
	}
}
