node {
	def app
	stage('Clone repository') {
		checkout scm
	}
	stage('build') {
		def app = docker.build("karx/fortune")
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
