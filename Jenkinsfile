pipeline {
	agent{
	    label 's1'
	}
	

	stages {
		stage("Script") {
			steps {
				git branch: 'feature', url: 'https://github.com/Lalit280/maven.git'
				sh "sh shellscript.sh"
			}
		}
		stage("Maven Build") {
			steps {
				git branch: 'main', url: "https://github.com/udiscopotato/my-app.git"
				sh "mvn clean install"
			}
		}
	}
}
